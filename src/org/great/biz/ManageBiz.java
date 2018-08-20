package org.great.biz;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.great.bean.Tbladmin;

public interface ManageBiz
{
	public Tbladmin geTbladmin(String adaccount);
	public List<Tbladmin> getTbladminlist (Tbladmin tbladmin , RowBounds rowBounds);
	public int getTbladminCount (Tbladmin tbladmin , RowBounds rowBounds);
	public boolean getInsertAdmin(Tbladmin tbladmin) ;
	public int getDelete(int adminid);
	public int getUpdate(int paramid ,int adminid);
	
}
