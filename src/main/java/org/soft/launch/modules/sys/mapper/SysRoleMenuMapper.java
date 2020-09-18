package org.soft.launch.modules.sys.mapper;

import org.apache.ibatis.annotations.Param;
import org.soft.launch.modules.sys.entity.SysRoleMenu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public interface SysRoleMenuMapper extends BaseMapper<SysRoleMenu> {

    int updateRolePermission(@Param("rms") List<SysRoleMenu> rms);
}
