package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author xueren.wang
 * @email wangxr_it@sina.com
 * @date 2018/7/2.
 */
@Controller
public class HelloController {

    @RequestMapping("/hello")
    private ModelAndView hello(ModelAndView model){
        model.getModel().put("hello","dldll");
        model.setViewName("hello");
        return model;
    }

    @RequestMapping("service")
    private ModelAndView  service(ModelAndView view){
        view.setViewName("service");
        view.getModel().put("test", "heheeeee");
        return view;
    }

}
