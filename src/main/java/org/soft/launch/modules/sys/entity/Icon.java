package org.soft.launch.modules.sys.entity;

import org.soft.launch.kernel.model.MHBaseModel;

/**
 * <p>
 * 
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public class Icon extends MHBaseModel {

    private static final long serialVersionUID = 1L;

    private String url;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Icon{" +
            "url=" + url +
        "}";
    }
}
