package org.soft.launch.kernel.component;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.soft.launch.kernel.tools.UserUtils;
import org.soft.launch.modules.sys.entity.SysUser;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        this.strictInsertFill(metaObject, "createTime", LocalDateTime.class, LocalDateTime.now());
        this.fillStrategy(metaObject, "createTime", LocalDateTime.now());
        this.strictInsertFill(metaObject, "deleted", Boolean.class, false);
        this.fillStrategy(metaObject, "deleted", false);
        SysUser user = UserUtils.getCurrentUser();
        if(user != null) {
            this.strictInsertFill(metaObject, "create_user", Long.class, user.getId());
            this.fillStrategy(metaObject, "create_user", user.getId());
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.strictUpdateFill(metaObject, "updateTime", LocalDateTime.class, LocalDateTime.now());
        this.fillStrategy(metaObject, "updateTime", LocalDateTime.now());
        SysUser user = UserUtils.getCurrentUser();
        if(user != null) {
            this.strictInsertFill(metaObject, "update_user", Long.class, user.getId());
            this.fillStrategy(metaObject, "update_user", user.getId());
        }
    }
}