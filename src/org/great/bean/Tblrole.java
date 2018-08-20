package org.great.bean;

import java.util.List;

public class Tblrole
{
	private int roleid;
	private String roleName;

	private List<Tbladmin> tbladmins1;

	public Tblrole()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Tblrole(int roleid, String roleName)
	{
		super();
		this.roleid = roleid;
		this.roleName = roleName;
	}

	public List<Tbladmin> getTbladmins1()
	{
		return tbladmins1;
	}

	public void setTbladmins1(List<Tbladmin> tbladmins1)
	{
		this.tbladmins1 = tbladmins1;
	}

	public int getRoleid()
	{
		return roleid;
	}

	public void setRoleid(int roleid)
	{
		this.roleid = roleid;
	}

	public String getRoleName()
	{
		return roleName;
	}

	public void setRoleName(String roleName)
	{
		this.roleName = roleName;
	}

}
