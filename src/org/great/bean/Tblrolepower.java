package org.great.bean;

public class Tblrolepower
{
	private int rpid;
	private int roleid;
	private int powid;

	public Tblrolepower()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Tblrolepower(int rpid, int roleid, int powid)
	{
		super();
		this.rpid = rpid;
		this.roleid = roleid;
		this.powid = powid;
	}

	public int getRpid()
	{
		return rpid;
	}

	public void setRpid(int rpid)
	{
		this.rpid = rpid;
	}

	public int getRoleid()
	{
		return roleid;
	}

	public void setRoleid(int roleid)
	{
		this.roleid = roleid;
	}

	public int getPowid()
	{
		return powid;
	}

	public void setPowid(int powid)
	{
		this.powid = powid;
	}

	@Override
	public String toString()
	{
		return "Tblrolepower [rpid=" + rpid + ", roleid=" + roleid + ", powid=" + powid + "]";
	}

}
