package org.great.bean;

import java.util.List;


public class Tblmenu
{
	private int menid;
	private int menpid;
	private String menuName;
	private String menuLink;
	public List<Tblmenu> childMenus;

	public Tblmenu()
	{
		super();
	}

	public Tblmenu(int menid, int menpid, String menuName, String menuLink)
	{
		super();
		this.menid = menid;
		this.menpid = menpid;
		this.menuName = menuName;
		this.menuLink = menuLink;
	}

	public List<Tblmenu> getChildMenus()
	{
		return childMenus;
	}

	public void setChildMenus(List<Tblmenu> childMenus)
	{
		this.childMenus = childMenus;
	}

	public int getMenid()
	{
		return menid;
	}

	public void setMenid(int menid)
	{
		this.menid = menid;
	}

	public int getMenpid()
	{
		return menpid;
	}

	public void setMenpid(int menpid)
	{
		this.menpid = menpid;
	}

	public String getMenuName()
	{
		return menuName;
	}

	public void setMenuName(String menuName)
	{
		this.menuName = menuName;
	}

	public String getMenuLink()
	{
		return menuLink;
	}

	public void setMenuLink(String menuLink)
	{
		this.menuLink = menuLink;
	}

	@Override
	public String toString()
	{
		return "Tblmenu [menid=" + menid + ", menpid=" + menpid + ", menuName=" + menuName + ", menuLink=" + menuLink
				+ ", childMenus=" + childMenus + "]";
	}

}
