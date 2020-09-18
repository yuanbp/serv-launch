package org.soft.launch.modules.sys.service;

import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.modules.sys.entity.Log;
import com.baomidou.mybatisplus.extension.service.IService;

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
public interface ILogService extends IService<Log> {

    void insertByLog(Log log);

    PageBean<Log> queryPage(Map<String, Object> paramMap);

    int delByLogIds(List<Long> ids);
}
