package org.soft.launch.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.google.common.collect.Lists;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.SysMenu;
import org.soft.launch.modules.sys.entity.SysRoleMenu;
import org.soft.launch.modules.sys.entity.SysUser;
import org.soft.launch.modules.sys.mapper.SysMenuMapper;
import org.soft.launch.modules.sys.mapper.SysRoleMapper;
import org.soft.launch.modules.sys.mapper.SysRoleMenuMapper;
import org.soft.launch.modules.sys.service.ISysMenuService;
import org.soft.launch.modules.sys.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {
    @Autowired
    private SysMenuMapper menuMapper;
    @Autowired
    private SysRoleMapper roleMapper;
    @Autowired
    private SysRoleMenuMapper roleMenuMapper;
    @Autowired
    private ISysUserService userService;

    @Override
    public List<SysMenu> selectByAdminId(long id) {
        //获取用户所有的全部权限(父,子权限)菜单
        SysUser user = userService.selectById(id);
        if (user == null) {
            return new ArrayList<>();
        }
        LambdaQueryWrapper<SysRoleMenu> rmQueryW = Wrappers.lambdaQuery();
        rmQueryW.eq(SysRoleMenu::getRid, user.getRid());
        List<SysRoleMenu> roleMenus = roleMenuMapper.selectList(rmQueryW);
        if (roleMenus == null) {
            return new ArrayList<>();
        }
        if (roleMenus.isEmpty()) {
            return new ArrayList<>();
        }
        Set<Long> mIds = roleMenus.stream().map(SysRoleMenu::getTid).collect(Collectors.toSet());
        List<SysMenu> menus = menuMapper.selectBatchIds(mIds);
        if (menus == null) {
            return new ArrayList<>();
        }
        if (menus.isEmpty()) {
            return new ArrayList<>();
        }
        //保存所有的父(主)菜单
        List<SysMenu> root = new ArrayList<>();
        //遍历所有菜单集合,如果是主菜单的话直接放入root集合
        for (SysMenu menu : menus) {
            //pid为0,则为父(主)菜单
            if (menu.getPid() == -1) {
                root.add(menu);
            }
        }
        //这个是遍历所有主菜单,分别获取所有主菜单的所有子菜单
        for (SysMenu menu : root) {
            //获取所有子菜单 递归
            List<SysMenu> childrenList = getchildrenMeun(menu.getId(), menus);
            //这个是实体类中的子菜单集合
            menu.setChildren(childrenList);
        }
        return root;
    }

    @Override
    public List<SysMenu> selectAll() {
        return menuMapper.selectList(Wrappers.emptyWrapper());
    }

    @Override
    public SysMenu selectById(long id) {
        return menuMapper.selectById(id);
    }

    @Override
    public SysMenu selectByName(String name) {
        LambdaQueryWrapper<SysMenu> qw = Wrappers.lambdaQuery();
        qw.eq(SysMenu::getName, name);
        return menuMapper.selectOne(qw);
    }

    @Override
    public SysMenu selectByUrl(String url) {
        LambdaQueryWrapper<SysMenu> qw = Wrappers.lambdaQuery();
        qw.eq(SysMenu::getUrl, url);
        return menuMapper.selectOne(qw);
    }

    @Override
    public int editByPermission(SysMenu menu) {
        return menuMapper.updateById(menu);
    }

    @Override
    public int insertPermission(SysMenu menu) {
        return menuMapper.insert(menu);
    }

    @Override
    @Transactional
    public int delByPermissionIds(List<Long> ids) {
        LambdaQueryWrapper<SysRoleMenu> rmQw = Wrappers.lambdaQuery();
        rmQw.in(SysRoleMenu::getTid, ids);
        roleMenuMapper.delete(rmQw);
        LambdaQueryWrapper<SysMenu> mqw = Wrappers.lambdaQuery();
        mqw.in(SysMenu::getPid, ids);
        menuMapper.delete(mqw);
        return menuMapper.deleteBatchIds(ids);
    }

    @Override
    public List<SysMenu> selectByPid(Long id) {
        LambdaQueryWrapper<SysMenu> qw = Wrappers.lambdaQuery();
        qw.eq(SysMenu::getPid, id);
        return menuMapper.selectList(qw);
    }

    @Override
    public List<SysMenu> selectByRoleId(long id) {
        LambdaQueryWrapper<SysRoleMenu> rmQueryW = Wrappers.lambdaQuery();
        rmQueryW.eq(SysRoleMenu::getRid, id);
        List<SysRoleMenu> roleMenus = roleMenuMapper.selectList(rmQueryW);
        if (roleMenus == null) {
            return new ArrayList<>();
        }
        if (roleMenus.isEmpty()) {
            return new ArrayList<>();
        }
        Set<Long> mIds = roleMenus.stream().map(SysRoleMenu::getTid).collect(Collectors.toSet());
        return menuMapper.selectBatchIds(mIds);
    }

    @Override
    @Transactional
    public int updateRolePermission(List<Long> ids, long id) {
        LambdaQueryWrapper<SysRoleMenu> rmQw = Wrappers.lambdaQuery();
        rmQw.eq(SysRoleMenu::getRid, id);
        roleMenuMapper.delete(rmQw);
        List<SysRoleMenu> rms = new ArrayList<>();
        for (Long item : ids) {
            SysRoleMenu rm = new SysRoleMenu();
            rm.setId(UUID.getTsid256());
            rm.setRid(id);
            rm.setTid(item);
            rms.add(rm);
        }
        if(rms.isEmpty()) {
            return 0;
        }
        return roleMenuMapper.updateRolePermission(rms);
    }


    //递归获取子菜单
    public List<SysMenu> getchildrenMeun(long id, List<SysMenu> allMeun) {
        //用于保存子菜单
        List<SysMenu> childrenList = new ArrayList<>();
        for (SysMenu info : allMeun) {
            //判断当前的菜单标识是否等于主菜单的id
            if (info.getPid() == id) {
                //如果是的话 就放入主菜单对象的子菜单集合
                childrenList.add(info);
            }
        }

        //这里就是递归了，遍历所有的子菜单
        for (SysMenu info : childrenList) {
            info.setChildren(getchildrenMeun(info.getId(), allMeun));
        }

        //如果子菜单为空的话，那就说明某菜单下没有子菜单了，直接返回空,子菜单为空的话就不会继续
        //迭代了
        if (childrenList.size() == 0) {
            return null;
        }
        return childrenList;
    }

    @Override
    public List<String> selectByUserName(String userName) {
        LambdaQueryWrapper<SysUser> uqw = Wrappers.lambdaQuery();
        uqw.eq(SysUser::getUsername, userName);
        SysUser user = userService.getOne(uqw, false);
        if (user == null) {
            return new ArrayList<>();
        }
        LambdaQueryWrapper<SysRoleMenu> rmQw = Wrappers.lambdaQuery();
        rmQw.eq(SysRoleMenu::getRid, user.getRid());
        List<SysRoleMenu> rms = roleMenuMapper.selectList(rmQw);
        if (rms == null) {
            return Lists.newArrayList();
        }
        if (rms.isEmpty()) {
            return Lists.newArrayList();
        }
        Set<Long> mids = rms.stream().map(SysRoleMenu::getTid).collect(Collectors.toSet());
        LambdaQueryWrapper<SysMenu> mqw = Wrappers.lambdaQuery();
        mqw.select(SysMenu::getUrl);
        mqw.in(SysMenu::getId, mids).and(e -> e.ne(SysMenu::getPid, -1));
        List<SysMenu> ms = menuMapper.selectList(mqw);
        return ms.stream().map(SysMenu::getUrl).collect(Collectors.toList());
    }

    @Override
    public List<String> selectURLAll() {
        List<SysMenu> ms = this.selectAll();
        return ms.stream().map(SysMenu::getUrl).collect(Collectors.toList());
    }
}
