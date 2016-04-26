package com.txsing.bookhotel.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	//public static final String postgreUrl = "jdbc:postgresql://localhost:5432/dbname"; //default port:5432
	//public static final String mysqlUrl = "jdbc:mysql://localhost:3306/dbname"; //default port:3306
	
	public static Connection connectPostgres(String url, String user, String passwd) throws Exception{
		Class.forName(SystemParameters.Driver_PostgreSQL).newInstance();
		Connection conn = DriverManager.getConnection(url, user, passwd);
		return conn;
	}
}

