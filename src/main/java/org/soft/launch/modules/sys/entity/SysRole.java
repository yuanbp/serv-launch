package org.soft.launch.modules.sys.entity;

import org.soft.launch.kernel.model.MHBaseModel;
import org.springframework.security.core.GrantedAuthority;

/**
 * <p>
 * 
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public class SysRole extends MHBaseModel implements GrantedAuthority {

    private static final long serialVersionUID = 1L;

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "SysRole{" +
            "name=" + name +
        "}";
    }

    @Override
    public String getAuthority() {
        return this.name;
    }
}
