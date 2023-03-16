package xyz.angelbeats.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@Import({JdbcConfig.class,MybatisConfig.class})
@ComponentScan({"xyz.angelbeats.dao","xyz.angelbeats.service","xyz.angelbeats.controller"})
@PropertySource("classpath:jdbc.properties")
@EnableTransactionManagement
public class SpringConfig {

}
