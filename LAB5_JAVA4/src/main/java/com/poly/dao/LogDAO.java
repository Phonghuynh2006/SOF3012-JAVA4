package com.poly.dao;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class LogDAO {

    File file = new File("D:/CODE/JAVA/JAVA4/GIT HUB/LAB5_JAVA4/logs.txt");

    public void create(String username, String url) {
        try (FileWriter fw = new FileWriter(file, true)) {
            fw.write(username + " | " + url + " | " + new Date() + "\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
