package org.soft.launch;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author chieftain
 * @date 2020/9/17 14:03
 */
@SpringBootApplication
@EnableTransactionManagement
@MapperScan({"org.soft.launch.modules.**.mapper"})
public class LaunchApp {

    public static void main(String[] args) {
        SpringApplication.run(LaunchApp.class, args);
    }
}
