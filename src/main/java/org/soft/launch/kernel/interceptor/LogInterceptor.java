package org.soft.launch.kernel.interceptor;

import org.soft.launch.kernel.tools.Const;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.Log;
import org.soft.launch.modules.sys.entity.SysUser;
import org.soft.launch.modules.sys.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Nonnull;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

/**
 * @Classname LogInterceptor
 * @Description None
 * @Date 2019/7/24 10:39
 * @Created by WDD
 */
public class LogInterceptor implements HandlerInterceptor{

    @Autowired
    private Log log;
    @Autowired
    private ILogService logService;

    @Override
    public boolean preHandle(@Nonnull HttpServletRequest request, @Nonnull HttpServletResponse response, @Nonnull Object handler) throws Exception {
        return true;
    }

    @Override
    public void afterCompletion(@Nonnull HttpServletRequest request, @Nonnull HttpServletResponse response, @Nonnull Object handler, Exception ex) throws Exception {
        String username = null;
        HttpSession session=request.getSession(false);
        if(session==null){
            return;
        }
        if(request.getSession().getAttribute(Const.ADMIN) != null){
            SysUser admin = (SysUser) request.getSession().getAttribute(Const.ADMIN);
            username = admin.getUsername();
        }
        String uri = request.getRequestURI();
        if("/manager/logList".equals(uri)){
            return;
        }

        log.setLogTime(LocalDateTime.now());
        log.setUsername(username);
        log.setUri(uri);
        log.setId(UUID.getTsid256());

        logService.insertByLog(log);
    }


}
