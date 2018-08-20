package org.great.util;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;


public class DbHelpers
{
	private static Connection connection;
	private static ComboPooledDataSource source;
	static {
		source = new ComboPooledDataSource("myc3p0");
	}

	public static synchronized Connection getConnection() {

		try {
			connection = source.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;

	}
	
	public static void closeConnection(Connection conn){
		try {
			if(null != conn ){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static QueryRunner getQueryRuner() {
		return new QueryRunner(source);
	}
}
