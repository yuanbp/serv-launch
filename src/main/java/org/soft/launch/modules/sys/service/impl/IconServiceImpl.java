package org.soft.launch.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.soft.launch.modules.sys.entity.Icon;
import org.soft.launch.modules.sys.mapper.IconMapper;
import org.soft.launch.modules.sys.service.IIconService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Service
public class IconServiceImpl extends ServiceImpl<IconMapper, Icon> implements IIconService {

    @Autowired
    private IconMapper iconMapper;

    @Override
    public List<Icon> selectAll() {
        return iconMapper.selectList(Wrappers.emptyWrapper());
    }
}
