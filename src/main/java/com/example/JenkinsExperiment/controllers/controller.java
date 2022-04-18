package com.example.JenkinsExperiment.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/tea")
public class controller {


    @GetMapping(path="/get")
    public ResponseEntity<String> getStudent() {
        return new ResponseEntity<>("Basic get response", HttpStatus.OK);
    }

    @GetMapping(path="/tea")
    public ResponseEntity<String> tea(){
        return new ResponseEntity<>("Soooo....changed again.. if yes, react-pipe, then break", HttpStatus.I_AM_A_TEAPOT);
    }

    @GetMapping(path="/environment")
    public ResponseEntity<String> environment(){
        String environment = System.getProperty("JAVA_HOME");
        System.out.println(environment);


        return new ResponseEntity<>("Soooo.... is this gonna work?... if yes, react-pipe, then break", HttpStatus.OK);
    }

}
