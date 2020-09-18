package org.soft.launch.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.modules.sys.entity.SysRole;
import org.soft.launch.modules.sys.entity.SysUser;
import org.soft.launch.modules.sys.mapper.SysRoleMapper;
import org.soft.launch.modules.sys.mapper.SysUserMapper;
import org.soft.launch.modules.sys.service.ISysUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import static java.util.Collections.singletonList;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

    @Autowired
    private SysUserMapper userMapper;
    @Autowired
    private SysRoleMapper roleMapper;

    @Override
    public SysUser login(String username, String password) {
        LambdaQueryWrapper<SysUser> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.eq(SysUser::getUsername, username)
                .eq(SysUser::getPassword, password);
        return userMapper.selectOne(userQueryWrapper);
    }

    @Override
    public PageBean<SysUser> queryPage(Map<String, Object> paramMap) {
        PageBean<SysUser> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));
        int current = Integer.parseInt(paramMap.get("pageno").toString());
        int pageSize = Integer.parseInt(paramMap.get("pagesize").toString());
        IPage<SysUser> page = new Page<>(current, pageSize);
        LambdaQueryWrapper<SysUser> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.orderBy(true, false, SysUser::getCreateTime, SysUser::getUpdateTime);
        page = userMapper.selectPage(page, userQueryWrapper);
        pageBean.setDatas(page.getRecords());
        pageBean.setTotalsize(page.getTotal());
        return pageBean;
    }

    @Override
    public int insertSysUser(SysUser user) {
        return userMapper.insert(user);
    }

    @Override
    public SysUser selectById(long id) {
        return userMapper.selectById(id);
    }

    @Override
    public int delBySysUserIds(List<Long> ids) {
        return userMapper.deleteBatchIds(ids);
    }

    @Override
    public int editBySysUser(SysUser user) {
        return userMapper.updateById(user);
    }

    @Override
    public SysUser selectByName(String username) {
        LambdaQueryWrapper<SysUser> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.eq(SysUser::getUsername, username);
        return userMapper.selectOne(userQueryWrapper);
    }

    @Override
    public SysUser selectByEmail(String email) {
        LambdaQueryWrapper<SysUser> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.eq(SysUser::getEmail, email);
        return userMapper.selectOne(userQueryWrapper);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        LambdaQueryWrapper<SysUser> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.eq(SysUser::getUsername, s);
        SysUser user = userMapper.selectOne(userQueryWrapper);
        if(user == null) {
            return user;
        }

        SysRole role = roleMapper.selectById(user.getRid());
        if(role != null) {
            user.setRoles(singletonList(role));
        }
        return user;
    }
}
