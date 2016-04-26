/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.txsing.bookhotel.util;

/**
 *
 * @author txsing
 */
public class SystemParameters {
    public static final String Driver_PostgreSQL = "org.postgresql.Driver";
    public static final String Driver_MySQL = "com.mysql.jdbc.Driver";
    
    public static final String UrlPrefix_PostgreSQL = "jdbc:postgresql";
    public static String server = System.getenv("DB_PORT").substring(3); //default value
    //public static String port = "5432";
    public static String user = "postgres";
    public static String passwd = "scse";
    public static String dbname = "bookhotel";

    public static String getUrl() {
        return UrlPrefix_PostgreSQL+server+"/"+dbname;
    }

    public static void setServer(String server) {
        SystemParameters.server = server;
    }

//    public static void setPort(String ports) {
//        SystemParameters.port = ports;
//    }

    public static void setUser(String user) {
        SystemParameters.user = user;
    }

    public static void setPasswd(String passwd) {
        SystemParameters.passwd = passwd;
    }

    public static void setDbname(String dbname) {
        SystemParameters.dbname = dbname;
    }
    
    
}
