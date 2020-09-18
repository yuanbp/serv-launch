package org.soft.launch.modules.sys.mapper;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.soft.launch.modules.sys.entity.SysUser;
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
public interface SysUserMapper extends BaseMapper<SysUser> {

    @Select("select * from sys_user where username = #{username}")
    @Results({
            @Result(id = true, property = "id",column = "id"),
            @Result(property = "roles", column = "id", javaType = List.class,
                    many = @Many(select = "org.soft.launch.modules.sys.mapper.SysRoleMapper.findById"))
    })
    SysUser findByName(String username);
}
