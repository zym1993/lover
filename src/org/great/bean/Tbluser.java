package org.great.bean;

import java.sql.Blob;

public class Tbluser
{
	private int userid;
	private String uaccount;
	private String upassword;
	private String usex;
	private String uphoto;
	private String ueducation;
	private String ujob;
	private String utellphone;
	private String umail;
	private String registertime;
	private String uname;
	private Blob uimage;
	private int upoint;
	private int utype;
	private int uroleid;
	private int upnumber;
	private int loadnumber;

	public Tbluser()
	{
		super();
	}

	

	public Tbluser(int userid, String uaccount, String upassword, String usex, String uphoto, String ueducation,
			String ujob, String utellphone, String umail, String registertime, String uname, Blob uimage, int upoint,
			int utype, int uroleid, int upnumber, int loadnumber)
	{
		super();
		this.userid = userid;
		this.uaccount = uaccount;
		this.upassword = upassword;
		this.usex = usex;
		this.uphoto = uphoto;
		this.ueducation = ueducation;
		this.ujob = ujob;
		this.utellphone = utellphone;
		this.umail = umail;
		this.registertime = registertime;
		this.uname = uname;
		this.uimage = uimage;
		this.upoint = upoint;
		this.utype = utype;
		this.uroleid = uroleid;
		this.upnumber = upnumber;
		this.loadnumber = loadnumber;
	}



	public String getUname()
	{
		return uname;
	}



	public void setUname(String uname)
	{
		this.uname = uname;
	}



	public int getUserid()
	{
		return userid;
	}

	public void setUserid(int userid)
	{
		this.userid = userid;
	}

	public String getUaccount()
	{
		return uaccount;
	}

	public void setUaccount(String uaccount)
	{
		this.uaccount = uaccount;
	}

	public String getUpassword()
	{
		return upassword;
	}

	public void setUpassword(String upassword)
	{
		this.upassword = upassword;
	}

	public String getUsex()
	{
		return usex;
	}

	public void setUsex(String usex)
	{
		this.usex = usex;
	}

	public String getUphoto()
	{
		return uphoto;
	}

	public void setUphoto(String uphoto)
	{
		this.uphoto = uphoto;
	}

	public String getUeducation()
	{
		return ueducation;
	}

	public void setUeducation(String ueducation)
	{
		this.ueducation = ueducation;
	}

	public String getUjob()
	{
		return ujob;
	}

	public void setUjob(String ujob)
	{
		this.ujob = ujob;
	}

	public String getUtellphone()
	{
		return utellphone;
	}

	public void setUtellphone(String utellphone)
	{
		this.utellphone = utellphone;
	}

	public String getUmail()
	{
		return umail;
	}

	public void setUmail(String umail)
	{
		this.umail = umail;
	}

	public String getRegistertime()
	{
		return registertime;
	}

	public void setRegistertime(String registertime)
	{
		this.registertime = registertime;
	}

	public Blob getUimage()
	{
		return uimage;
	}

	public void setUimage(Blob uimage)
	{
		this.uimage = uimage;
	}

	public int getUpoint()
	{
		return upoint;
	}

	public void setUpoint(int upoint)
	{
		this.upoint = upoint;
	}

	public int getUtype()
	{
		return utype;
	}

	public void setUtype(int utype)
	{
		this.utype = utype;
	}

	public int getUroleid()
	{
		return uroleid;
	}

	public void setUroleid(int uroleid)
	{
		this.uroleid = uroleid;
	}

	public int getUpnumber()
	{
		return upnumber;
	}

	public void setUpnumber(int upnumber)
	{
		this.upnumber = upnumber;
	}

	public int getLoadnumber()
	{
		return loadnumber;
	}

	public void setLoadnumber(int loadnumber)
	{
		this.loadnumber = loadnumber;
	}

}
