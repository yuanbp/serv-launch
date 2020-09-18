package org.soft.launch.kernel.component;

import com.baomidou.mybatisplus.core.injector.DefaultSqlInjector;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import org.apache.ibatis.builder.MapperBuilderAssistant;
import org.soft.launch.kernel.model.MHBaseModel;
import org.springframework.stereotype.Component;

@Component
public class CommonSqlInjector extends DefaultSqlInjector {

    @Override
    public void inspectInject(MapperBuilderAssistant builderAssistant, Class<?> mapperClass) {
        super.inspectInject(builderAssistant, mapperClass);

        TableInfoHelper.initTableInfo(builderAssistant, MHBaseModel.class);
    }
}
