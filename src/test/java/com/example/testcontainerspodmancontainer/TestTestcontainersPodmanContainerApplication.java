package com.example.testcontainerspodmancontainer;

import org.springframework.boot.SpringApplication;

public class TestTestcontainersPodmanContainerApplication {

    public static void main(String[] args) {
        SpringApplication.from(TestcontainersPodmanContainerApplication::main).with(TestcontainersConfiguration.class).run(args);
    }

}
