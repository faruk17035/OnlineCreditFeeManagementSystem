/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package storage_service;

import java.util.*;

/**
 *
 * @author Md Faruk Hosen
 */
public class InternalStorage {
    

    private static Map<String, String> data = new HashMap<>();
    
    private InternalStorage(){
        if(data==null){
            data = new HashMap<>();
        }
    }
    
    public static void setInstanceData(String key, String value){
        System.out.println("key : "+key+", Value : "+value);
        data.put(key, value);
    }
    
    public static String getInstanceData(String key){
        return data.get(key);
    }
    
    
}
