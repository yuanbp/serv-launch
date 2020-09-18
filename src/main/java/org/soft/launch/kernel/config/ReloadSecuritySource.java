package org.soft.launch.kernel.config;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.soft.launch.modules.sys.entity.SysMenu;
import org.soft.launch.modules.sys.entity.SysRole;
import org.soft.launch.modules.sys.mapper.SysMenuMapper;
import org.soft.launch.modules.sys.mapper.SysRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * @Auther: wdd
 * @Date: 2020/1/1 14:10
 * @Description:
 */
@Component
public class ReloadSecuritySource {

    @Autowired
    private SysRoleMapper roleMapper;
    @Autowired
    private SysMenuMapper menuMapper;

    public void getReloadSecuritySource(){
        Map<RequestMatcher, Collection<ConfigAttribute>> map = new HashMap<>();
        for(SysMenu m : menuMapper.selectList(Wrappers.emptyWrapper())){
            if(!StringUtils.isEmpty(m.getUrl())){
                AntPathRequestMatcher matcher = new AntPathRequestMatcher(m.getUrl());
                ArrayList<ConfigAttribute> configs = new ArrayList<>();
                for(SysRole r : roleMapper.findByTreeMenuId(m.getId())){
                    SecurityConfig config = new SecurityConfig(r.getName());
                    configs.add(config);
                }
                map.put(matcher,configs);
            }
        }
        new MyFilterSecurityMetadataSource(map);
    }
}
