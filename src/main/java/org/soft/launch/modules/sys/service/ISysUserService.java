package org.soft.launch.modules.sys.service;

import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.modules.sys.entity.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

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
public interface ISysUserService extends IService<SysUser>, UserDetailsService {

    SysUser login(String username, String password);

    PageBean<SysUser> queryPage(Map<String, Object> paramMap);

    int insertSysUser(SysUser SysUser);

    SysUser selectById(long id);

    int delBySysUserIds(List<Long> ids);

    int editBySysUser(SysUser SysUser);

    SysUser selectByName(String username);

    SysUser selectByEmail(String email);

    @Override
    UserDetails loadUserByUsername(String s);
}
