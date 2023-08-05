package com.example.javasunbase;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(scanBasePackages = "com.example.javasunbase")
public class JavaSunBaseApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(JavaSunBaseApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(JavaSunBaseApplication.class, args);
	}

}
