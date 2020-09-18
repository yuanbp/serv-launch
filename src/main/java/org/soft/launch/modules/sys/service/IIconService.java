package org.soft.launch.modules.sys.service;

import org.soft.launch.modules.sys.entity.Icon;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
public interface IIconService extends IService<Icon> {

    List<Icon> selectAll();
}
