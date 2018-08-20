package org.great.bean;



public class Tbladmin1
{
	private int adminid1;
	private String adaccount1;
	private String adpassword1;
	// private BLOB adphoto1;
	private String adname1;
	private int roleid1;
	private String regisertime1;
	private int paramid1;

	public Tbladmin1()
	{
		super();
	}

	public Tbladmin1(int adminid1, String adaccount1, String adpassword1, String adname1, int roleid1,
			String regisertime1, int paramid1)
	{
		super();
		this.adminid1 = adminid1;
		this.adaccount1 = adaccount1;
		this.adpassword1 = adpassword1;
		this.adname1 = adname1;
		this.roleid1 = roleid1;
		this.regisertime1 = regisertime1;
		this.paramid1 = paramid1;
	}

	public int getAdminid1()
	{
		return adminid1;
	}

	public void setAdminid1(int adminid1)
	{
		this.adminid1 = adminid1;
	}

	public String getAdaccount1()
	{
		return adaccount1;
	}

	public void setAdaccount1(String adaccount1)
	{
		this.adaccount1 = adaccount1;
	}

	public String getAdpassword1()
	{
		return adpassword1;
	}

	public void setAdpassword1(String adpassword1)
	{
		this.adpassword1 = adpassword1;
	}

	public String getAdname1()
	{
		return adname1;
	}

	public void setAdname1(String adname1)
	{
		this.adname1 = adname1;
	}

	public int getRoleid1()
	{
		return roleid1;
	}

	public void setRoleid1(int roleid1)
	{
		this.roleid1 = roleid1;
	}

	public String getRegisertime1()
	{
		return regisertime1;
	}

	public void setRegisertime1(String regisertime1)
	{
		this.regisertime1 = regisertime1;
	}

	public int getParamid1()
	{
		return paramid1;
	}

	public void setParamid1(int paramid1)
	{
		this.paramid1 = paramid1;
	}

}
