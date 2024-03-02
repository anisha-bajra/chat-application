package com.demo.chatapplication.component.chat.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("chat")
public class ChatController {

    @GetMapping("test")
    public ResponseEntity<?> getChat(){
        return ResponseEntity.ok("Chat Application");
    }
}
