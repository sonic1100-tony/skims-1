package com.skims;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableJpaAuditing     // JPA Auditing을 활성화 하기 위한 어노테이션
@SpringBootApplication
@EnableFeignClients
// @EnableBinding(KafkaProcessor.class)
public class SkimsFinApplication {
	protected static ApplicationContext applicationContext;

	public static void main(String[] args) {
		SpringApplication.run(SkimsFinApplication.class, args);
	}

	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurer() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/**");
				//registry.addMapping("/**").allowedOrigins("http://front-server.com");
			}
		};
	}
}
