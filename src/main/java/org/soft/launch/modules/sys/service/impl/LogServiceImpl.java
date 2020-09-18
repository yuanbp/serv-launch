package org.soft.launch.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.modules.sys.entity.Log;
import org.soft.launch.modules.sys.mapper.LogMapper;
import org.soft.launch.modules.sys.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Service
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements ILogService {

    @Autowired
    private LogMapper logMapper;

    @Override
    public void insertByLog(Log log) {
        logMapper.insert(log);
    }

    @Override
    public PageBean<Log> queryPage(Map<String, Object> paramMap) {
        PageBean<Log> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));

        int current = Integer.parseInt(paramMap.get("pageno").toString());
        int pageSize = Integer.parseInt(paramMap.get("pagesize").toString());
        IPage<Log> page = new Page<>(current, pageSize);
        LambdaQueryWrapper<Log> qw = Wrappers.lambdaQuery();
        qw.orderBy(true, false, Log::getLogTime);
        page = logMapper.selectPage(page, qw);

        pageBean.setDatas(page.getRecords());
        pageBean.setTotalsize(page.getTotal());

        return pageBean;
    }

    @Override
    public int delByLogIds(List<Long> ids) {
        return logMapper.deleteBatchIds(ids);
    }
}
