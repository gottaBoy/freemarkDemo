package com.cargocn.cloud.server.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
@Controller
public class SimpleController extends AbstractController{

	 @Override
	 protected ModelAndView handleRequestInternal(HttpServletRequest request,
	         HttpServletResponse response) throws Exception {
	     System.out.println("SimpleController...");
	     System.out.println(request.getParameter("username"));
	     ModelAndView mv = new ModelAndView("index1");//loginController==SimpleController
	     mv.addObject("username", "hello,SimpleController");
	     return mv;
	 }
	 
	 
	/* protected Object formBackingObject(HttpServletRequest request) throws Exception {  
	    System.out.println("formBackingObject方法执行-->01");  
	    return super.formBackingObject(request);  
	 } 
	 
	 protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {  
	    System.out.println("initBinder方法执行-->02");  
	    super.initBinder(request, binder);  
	 }  
	 protected void onBind(HttpServletRequest request, Object command) throws Exception {  
	    System.out.println("onBind方法执行-->03");  
	    super.onBind(request, command);  
	 }  
	 protected void onBindAndValidate(HttpServletRequest request, Object command, BindException errors)  
	        throws Exception {  
	    System.out.println("onBindAndValidate方法执行-->04");  
	    super.onBindAndValidate(request, command, errors);  
	 }  */
}
