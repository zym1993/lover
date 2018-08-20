package org.great.bean;

public class Tblpower
{
	private int powid;
	private int menid;
	private String powerName;

	public Tblpower()
	{
		super();
	}

	public Tblpower(int powid, int menid, String powerName)
	{
		super();
		this.powid = powid;
		this.menid = menid;
		this.powerName = powerName;
	}

	public int getPowid()
	{
		return powid;
	}

	public void setPowid(int powid)
	{
		this.powid = powid;
	}

	public int getMenid()
	{
		return menid;
	}

	public void setMenid(int menid)
	{
		this.menid = menid;
	}

	public String getPowerName()
	{
		return powerName;
	}

	public void setPowerName(String powerName)
	{
		this.powerName = powerName;
	}

	@Override
	public String toString()
	{
		return "Tblpower [powid=" + powid + ", menid=" + menid + ", powerName=" + powerName + "]";
	}

}
