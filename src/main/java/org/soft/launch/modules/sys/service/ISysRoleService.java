package org.soft.launch.modules.sys.service;

import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.modules.sys.entity.SysRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public interface ISysRoleService extends IService<SysRole> {

    List<SysRole> selectAll();

    PageBean<SysRole> queryPage(Map<String, Object> paramMap);

    int delByRoleIds(List<Long> ids);

    SysRole selectById(long id);

    SysRole selectByName(String name);

    int editByRole(SysRole role);

    int insertRole(SysRole role);
}
