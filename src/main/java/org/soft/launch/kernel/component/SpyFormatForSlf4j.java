package org.soft.launch.kernel.component;

import com.p6spy.engine.spy.appender.CustomLineFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SpyFormatForSlf4j extends CustomLineFormat {

    private static final Logger log = LoggerFactory.getLogger(SpyFormatForSlf4j.class);

    @Override
    public String formatMessage(int connectionId, String now, long elapsed, String category, String prepared, String sql, String url) {
        String info = super.formatMessage(connectionId, now, elapsed, category, prepared, sql, url);
        log.debug(info);
        return info;
    }
}