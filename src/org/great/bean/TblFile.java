package org.great.bean;

public class TblFile
{
	private int fileid;
	private String ftitle;
	private String fbrief;
	private String fileurl;
	private String filetype;
	private int filepoint;
	private String uname;
	private String fileuptime;
	private String paramid;

	public TblFile()
	{
		super();
	}

	public TblFile(int fileid, String ftitle, String fbrief, String fileurl, String filetype, int filepoint,
			String uname, String fileuptime, String paramid)
	{
		super();
		this.fileid = fileid;
		this.ftitle = ftitle;
		this.fbrief = fbrief;
		this.fileurl = fileurl;
		this.filetype = filetype;
		this.filepoint = filepoint;
		this.uname = uname;
		this.fileuptime = fileuptime;
		this.paramid = paramid;
	}

	public String getUname()
	{
		return uname;
	}

	public void setUname(String uname)
	{
		this.uname = uname;
	}

	public int getFileid()
	{
		return fileid;
	}

	public void setFileid(int fileid)
	{
		this.fileid = fileid;
	}

	public String getFtitle()
	{
		return ftitle;
	}

	public void setFtitle(String ftitle)
	{
		this.ftitle = ftitle;
	}

	public String getFbrief()
	{
		return fbrief;
	}

	public void setFbrief(String fbrief)
	{
		this.fbrief = fbrief;
	}

	public String getFileurl()
	{
		return fileurl;
	}

	public void setFileurl(String fileurl)
	{
		this.fileurl = fileurl;
	}

	public String getFiletype()
	{
		return filetype;
	}

	public void setFiletype(String filetype)
	{
		this.filetype = filetype;
	}

	public int getFilepoint()
	{
		return filepoint;
	}

	public void setFilepoint(int filepoint)
	{
		this.filepoint = filepoint;
	}

	public String getFileuptime()
	{
		return fileuptime;
	}

	public void setFileuptime(String fileuptime)
	{
		this.fileuptime = fileuptime;
	}

	public String getParamid()
	{
		return paramid;
	}

	public void setParamid(String paramid)
	{
		this.paramid = paramid;
	}

	@Override
	public String toString()
	{
		return "TblFile [fileid=" + fileid + ", ftitle=" + ftitle + ", fbrief=" + fbrief + ", fileurl=" + fileurl
				+ ", filetype=" + filetype + ", filepoint=" + filepoint + ", fileuptime=" + fileuptime + ", paramid="
				+ paramid + "]";
	}

}
