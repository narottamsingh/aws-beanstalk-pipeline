package com.bce;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloRestController {

  @GetMapping
  public String hello(){
    return "Welcome to AWS beanstalk pipeline";
  }

}
