package org.soft.launch.kernel.interceptor;

import org.soft.launch.kernel.tools.Const;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Nonnull;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Classname LoginInterceptor
 * @Description 登录拦截器
 * @Date 2019/7/17 13:51
 * @Created by WDD
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, @Nonnull HttpServletResponse response, @Nonnull Object handler) throws Exception {
        String contextPath = request.getRequestURI();
        if(!StringUtils.isEmpty(request.getSession().getAttribute(Const.ADMIN))){
            return true;
        }
        response.sendRedirect(request.getContextPath() + "/manager/login");
        return false;
    }
}
