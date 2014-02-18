/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.joseph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.Date;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    @RequestMapping(method = RequestMethod.GET)
    public String helloWorld() {
        return "index";
    }

    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public @ResponseBody
    String getTime(@RequestParam String name) {
        String result = "Time for " + name + " is " + new Date().toString();
        return result;
    }
}
