package com.example.demo.controller;

import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.ErrorPageRegistrar;
import org.springframework.boot.web.server.ErrorPageRegistry;
import org.springframework.http.HttpStatus;

/**
 * @author xueren.wang
 * @email wangxr_it@sina.com
 * @date 2018/7/3.
 */
public class MyErrorPageRegistrar implements ErrorPageRegistrar{
    @Override
    public void registerErrorPages(ErrorPageRegistry registry) {
        registry.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "/400"));
    }
}
