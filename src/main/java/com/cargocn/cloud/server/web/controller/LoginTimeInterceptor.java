package com.cargocn.cloud.server.web.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginTimeInterceptor extends HandlerInterceptorAdapter{

	private int startTime;  
    private int endTime;  
  
    public void setStartTime(int startTime) {  
        this.startTime = startTime;  
    }  
    public void setEndTime(int endTime) {  
        this.endTime = endTime;  
    }  
  
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,  
            Exception ex) throws Exception {  
        System.out.println("执行afterCompletion方法-->03");  
        super.afterCompletion(request, response, handler, ex);  
    }  
  
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,  
            ModelAndView modelAndView) throws Exception {  
        System.out.println("执行postHandle方法-->02");  
        super.postHandle(request, response, handler, modelAndView);  
    }  
  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)  
            throws Exception {  
        System.out.println("执行preHandle方法-->01");  
        Calendar cal = Calendar.getInstance();  
        int hour = cal.get(Calendar.HOUR_OF_DAY);     
        if (startTime <= hour && hour < endTime) {  
            return true;  
        } else {  
            response.sendRedirect("http://www.iteye.com");  
            return false;  
        }  
    }  
}
