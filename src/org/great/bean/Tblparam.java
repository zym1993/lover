package org.great.bean;

import java.io.Serializable;

public class Tblparam implements Serializable
{
	private int paramid;
	private int parampid;
	private String paramname;

	public Tblparam(int paramid, int parampid, String paramname)
	{
		super();
		this.paramid = paramid;
		this.parampid = parampid;
		this.paramname = paramname;
	}

	public Tblparam()
	{
		super();
	}

	public int getParamid()
	{
		return paramid;
	}

	public void setParamid(int paramid)
	{
		this.paramid = paramid;
	}

	public int getParampid()
	{
		return parampid;
	}

	public void setParampid(int parampid)
	{
		this.parampid = parampid;
	}

	public String getParamname()
	{
		return paramname;
	}

	public void setParamname(String paramname)
	{
		this.paramname = paramname;
	}

}
