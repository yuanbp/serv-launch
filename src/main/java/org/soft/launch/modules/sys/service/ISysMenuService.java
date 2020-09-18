package org.soft.launch.modules.sys.service;

import org.soft.launch.modules.sys.entity.SysMenu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public interface ISysMenuService extends IService<SysMenu> {

    List<SysMenu> selectByAdminId(long id);

    List<SysMenu> selectAll();

    SysMenu selectById(long id);

    SysMenu selectByName(String name);

    SysMenu selectByUrl(String url);

    int editByPermission(SysMenu menu);

    int insertPermission(SysMenu menu);

    int delByPermissionIds(List<Long> ids);

    List<SysMenu> selectByPid(Long id);

    List<SysMenu> selectByRoleId(long id);

    int updateRolePermission(List<Long> ids, long id);

    List<String> selectByUserName(String userName);

    List<String> selectURLAll();
}
