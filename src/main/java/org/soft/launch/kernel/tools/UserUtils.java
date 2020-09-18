package org.soft.launch.kernel.tools;

import org.soft.launch.modules.sys.entity.SysUser;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Description: 获取用户信息
 * @author : jfwu
 * @date : 2019-05-28
 * Time: 13:43
 */
public class UserUtils {

    private UserUtils(){}

    /**
     * 获取当前登录用户信息
     * @return
     */
    public static SysUser getCurrentUser(){
        if(SecurityContextHolder.getContext().getAuthentication() != null){
            return (SysUser)SecurityContextHolder.getContext()
                    .getAuthentication()
                    .getPrincipal();
        }
        return null;
    }

    /**
     * 获取当前登录用户id
     * @return
     */
    public static Long getCurrentUserId(){
        SysUser user = getCurrentUser();
        if(user != null){
            return user.getId();
        }
        return null;
    }
}
