package org.soft.launch.kernel.component;

import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.annotation.Nonnull;

@Component
public class SpringContextHolder implements ApplicationContextAware {

    /**
     * 以静态变量保存ApplicationContext,可在任意代码中取出ApplicaitonContext.
     */
    private static ApplicationContext context;


    @Override
    public void setApplicationContext(@Nonnull ApplicationContext applicationContext) throws BeansException {
        SpringContextHolder.context = applicationContext;
    }

    public static <T> T getBean(String name) {
        return (T) context.getBean(name);
    }

    public static <T> T getBean(Class<T> clazz) {
       return context.getBean(clazz);
    }

    public static ApplicationContext getContext() {
        return context;
    }

    // 获取当前环境参数  exp: dev,prod,test
    public static String getActiveProfile() {
        String []profiles = SpringContextHolder.context.getEnvironment().getActiveProfiles();
        if( ! ArrayUtils.isEmpty(profiles)){
            return profiles[0];
        }
        return "";
    }

}
