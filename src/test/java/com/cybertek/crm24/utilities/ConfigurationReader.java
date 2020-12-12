package com.cybertek.crm24.utilities;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class ConfigurationReader {


   private static final Properties properties = new Properties();

    static{

        try (InputStream input = new FileInputStream("configuration.properties")){
            properties.load(input);

        } catch (Exception e){
            e.printStackTrace();
            System.out.println("Failed to load properties file");
        }
    }

    public static String getProperty(String key){
        return properties.getProperty(key);
    }



}
