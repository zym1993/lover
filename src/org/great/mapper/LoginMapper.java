package org.great.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.great.annotation.LoginAnnotation;
import org.great.bean.Tbladmin;
import org.great.bean.Tblmenu;
import org.great.bean.Tblparam;
import org.great.bean.Tblpower;
import org.great.bean.Tblrolepower;
import org.springframework.stereotype.Repository;

@LoginAnnotation
public interface LoginMapper
{

	public List<Tbladmin> findAll();

	public Tbladmin findByAccount(String uname);

	public List<Tblparam> findTblparam();

	public List<Tblparam> findTblparamAll();

	public List<Tblrolepower> tblrolepowerAll(int i);

	public Tblpower tblpowers(int powid);

	public List<Tblmenu> tblmenus(int menpid);

	public Tbladmin findByAccount1(String adaccount);

	public List<Tbladmin> tbladminlist(Tbladmin tbladmin, RowBounds rowBounds);

	public int tbladminCount(Tbladmin tbladmin, RowBounds rowBounds);

	public boolean insertAdmin(Tbladmin tbladmin);
	
	public int deleteAdmin(int adminid);
	
	public int updateAdmin (int paramid ,int adminid );

}
