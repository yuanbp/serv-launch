package org.soft.launch.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.SysRole;
import org.soft.launch.modules.sys.mapper.SysRoleMapper;
import org.soft.launch.modules.sys.service.ISysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements ISysRoleService {

    private static final Logger log = LoggerFactory.getLogger(SysRoleServiceImpl.class);

    @Autowired
    private SysRoleMapper roleMapper;

    @Override
    public List<SysRole> selectAll() {
        return roleMapper.selectList(Wrappers.emptyWrapper());
    }

    @Override
    public PageBean<SysRole> queryPage(Map<String, Object> paramMap) {
        PageBean<SysRole> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));
        int current = Integer.parseInt(paramMap.get("pageno").toString());
        int pageSize = Integer.parseInt(paramMap.get("pagesize").toString());
        IPage<SysRole> page = new Page<>(current, pageSize);
        LambdaQueryWrapper<SysRole> userQueryWrapper = Wrappers.lambdaQuery();
        userQueryWrapper.orderBy(true, false, SysRole::getCreateTime, SysRole::getUpdateTime);
        page = roleMapper.selectPage(page, userQueryWrapper);
        pageBean.setDatas(page.getRecords());
        pageBean.setTotalsize(page.getTotal());

        return pageBean;
    }

    @Override
    @Transactional
    public int delByRoleIds(List<Long> ids) {
        try {
            return roleMapper.deleteBatchIds(ids);
        } catch (Exception e) {
            //存在管理员拥有此角色，无法删除
            log.error(e.getMessage(), e);
            return 0;
        }
    }

    @Override
    public SysRole selectById(long id) {
        return roleMapper.selectById(id);
    }

    @Override
    public SysRole selectByName(String name) {
        LambdaQueryWrapper<SysRole> qw = Wrappers.lambdaQuery();
        qw.eq(SysRole::getName, name);
        return roleMapper.selectOne(qw);
    }

    @Override
    public int editByRole(SysRole role) {
        return roleMapper.updateById(role);
    }

    @Override
    public int insertRole(SysRole role) {
        role.setId(UUID.getTsid256());
        return roleMapper.insert(role);
    }
}
