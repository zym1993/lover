package org.great.bean;

import java.io.Serializable;
import java.util.List;

public class Tbladmin implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String toString()
	{
		return "Tbladmin [adminid=" + adminid + ", adaccount=" + adaccount + ", adpassword=" + adpassword + ", adname="
				+ adname + ", roleid=" + roleid + ", regisertime=" + regisertime + ", paramid=" + paramid
				+ ", adminlist=" + adminlist + ", tblrole=" + tblrole + "]";
	}

	private int adminid;
	private String adaccount;
	private String adpassword;
	// private BLOB adphoto;
	private String adname;
	private int roleid;
	private String regisertime;
	private int paramid;
	private List<Integer> adminlist;
//	private List<Tbladmin> tbladminlist;
    private Tblrole tblrole;
	public Tbladmin()
	{
		super();
	}

	public Tbladmin(String adaccount, String adpassword)
	{
		super();
		this.adaccount = adaccount;
		this.adpassword = adpassword;
	}

	public Tbladmin(int adminid, String adaccount, String adpassword, String adname, int roleid, String regisertime,
			int paramid)
	{
		super();
		this.adminid = adminid;
		this.adaccount = adaccount;
		this.adpassword = adpassword;
		this.adname = adname;
		this.roleid = roleid;
		this.regisertime = regisertime;
		this.paramid = paramid;
	}


	public List<Integer> getAdminlist()
	{
		return adminlist;
	}

	public Tblrole getTblrole()
	{
		return tblrole;
	}

	public void setTblrole(Tblrole tblrole)
	{
		this.tblrole = tblrole;
	}

	public void setAdminlist(List<Integer> adminlist)
	{
		this.adminlist = adminlist;
	}

	public int getAdminid()
	{
		return adminid;
	}

	public void setAdminid(int adminid)
	{
		this.adminid = adminid;
	}

	public String getAdaccount()
	{
		return adaccount;
	}

	public void setAdaccount(String adaccount)
	{
		this.adaccount = adaccount;
	}

	public String getAdpassword()
	{
		return adpassword;
	}

	public void setAdpassword(String adpassword)
	{
		this.adpassword = adpassword;
	}

	public String getAdname()
	{
		return adname;
	}

	public void setAdname(String adname)
	{
		this.adname = adname;
	}

	public int getRoleid()
	{
		return roleid;
	}

	public void setRoleid(int roleid)
	{
		this.roleid = roleid;
	}

	public String getRegisertime()
	{
		return regisertime;
	}

	public void setRegisertime(String regisertime)
	{
		this.regisertime = regisertime;
	}

	public int getParamid()
	{
		return paramid;
	}

	public void setParamid(int paramid)
	{
		this.paramid = paramid;
	}

}
