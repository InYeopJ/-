package com.sboot.matkit.config;

import javax.sql.DataSource;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.*;

@Configuration
@ComponentScan("com.sboot.matkit")
public class JavaConfig {
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl(
				"jdbc:mysql://localhost:3306/graduate?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8");
		dataSource.setUsername("root");
		
		dataSource.setPassword("bunta1729");
		return dataSource;
	}
}