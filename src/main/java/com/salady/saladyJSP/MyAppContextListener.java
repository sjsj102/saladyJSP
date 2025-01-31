package com.salady.saladyJSP;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Driver;
import java.sql.DriverManager;
import java.util.Enumeration;

@Slf4j
public class MyAppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce){
        // application 시작 시 필요한 초기화 작업 수행
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce){

        // application 종료시 JDBC Connection 해제
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while(drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                System.out.println("Unregistering JDBC driver: " + driver);
            } catch (Exception e) {
                System.err.println("Error unregistering JDBC driver: " + driver);

                log.error("Error Occurs!!", e);

            }
        }
    }
}
