package com.cargocn.cloud.server.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

  private static Logger log = LoggerFactory.getLogger(LoginController.class);
  
  @RequestMapping(value="/")
  public String index(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("login");
      return "login";
  }
  
  @RequestMapping(value="/login")
  public String login(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("index");
      return "index";
  }
  
  @RequestMapping(value="/add",method=RequestMethod.POST)
  public @ResponseBody String add(
		  HttpServletRequest request,HttpServletResponse response,
		  @RequestParam(value="ta") String ta,Model model){
	  log.debug("add");
      return "add";
  }
  
  @RequestMapping(value="/shipAdd")
  public String shipAdd(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("shipAdd");
      return "shipAdd";
  }
  
  @RequestMapping(value="/shipInquiry")
  public String shipInquiry(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("shipInquiry");
      return "shipInquiry";
  }
  
  @RequestMapping(value="/shipTrackDetails")
  public String shipTrackDetails(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("shipTrackDetails");
      return "shipTrackDetails";
  }
  
  @RequestMapping(value="/shipperReleaseInqury")
  public String shipperReleaseInqury(HttpServletRequest request,HttpServletResponse response,Model model){
	  log.debug("shipperReleaseInqury");
      return "shipperReleaseInqury";
  }
}
