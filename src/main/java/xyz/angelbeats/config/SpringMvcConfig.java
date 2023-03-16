package xyz.angelbeats.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import xyz.angelbeats.controller.interceptor.LoginInterceptor;

@Configuration
@EnableWebMvc
@ComponentScan("xyz.angelbeats.controller")
public class SpringMvcConfig implements WebMvcConfigurer {

    @Autowired
    private LoginInterceptor loginInterceptor;

    @Bean
    public InternalResourceViewResolver internalResourceViewResolver(){//jsp视图解析
        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("/fore/");
        internalResourceViewResolver.setSuffix(".jsp");
        return internalResourceViewResolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {//静态资源不走controller
        registry.addResourceHandler("/style/**").addResourceLocations("/style/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {//拦截交给springmvc的后台页面
        registry.addInterceptor(loginInterceptor).addPathPatterns("/admin/**");
    }
}
