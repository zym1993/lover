package org.great.biz;

import java.util.List;

import org.great.bean.Tbladmin;
import org.great.bean.Tblmenu;
import org.great.bean.Tblparam;

public interface LoginBiz
{
	public List<Tbladmin> geTbladmins();
	public Tbladmin geTbladmin(String uname);
	public List<Tblparam> geTblparams();
	public List<Tblparam> geTblparamsAll();
	public List<Tblmenu> powerMenu (Tbladmin tbladmin);
}
