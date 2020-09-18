package org.soft.launch.modules.sys.mapper;

import org.apache.ibatis.annotations.Select;
import org.soft.launch.modules.sys.entity.SysRole;
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
public interface SysRoleMapper extends BaseMapper<SysRole> {

    @Select("select a.id,a.name from sys_role a,sys_role_menu b,sys_menu c where a.id = b.rid " +
            "and b.tid = c.id and c.id = #{treeMenuId}")
    List<SysRole> findByTreeMenuId(long treeMenuId);
}
