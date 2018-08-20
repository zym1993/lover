package org.great.util;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBastisUtil
{
	private static SqlSessionFactory sf;
	static{ 
		
		try
		{
			//加载配置文件
			String conf = "SqlMapConfig.xml";
			//读取xml
			Reader reader =Resources.getResourceAsReader(conf);
			//生成连接方法
			SqlSessionFactoryBuilder sfb = new SqlSessionFactoryBuilder();
			sf=sfb.build(reader);
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 	}
	
	public static SqlSession getSession(){
		//得到连接
		SqlSession session = sf.openSession();
		return session;
	}
	
	public static void main(String[] args){
		System.out.println(MyBastisUtil.getSession());
	}
}
