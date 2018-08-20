package org.great.biz;

import java.util.ArrayList;
import java.util.List;


import org.great.bean.Tbladmin;
import org.great.bean.Tblmenu;
import org.great.bean.Tblparam;
import org.great.bean.Tblpower;
import org.great.bean.Tblrolepower;
import org.great.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class LoginBizImpl implements LoginBiz
{
    @Autowired
	private LoginMapper loginMapper;

	@Override
	public List<Tbladmin> geTbladmins()
	{
		
		return loginMapper.findAll();
	}

	@Override
	public Tbladmin geTbladmin(String uname)
	{
		return loginMapper.findByAccount(uname);
	}

	@Override
	public List<Tblparam> geTblparams()
	{
		return loginMapper.findTblparam();
	}

	@Override
	public List<Tblparam> geTblparamsAll()
	{
		
		return loginMapper.findTblparamAll();
	}

	@Override
	public List<Tblmenu> powerMenu(Tbladmin tbladmin)
	{
		List<Tblrolepower> tblrolepower = loginMapper.tblrolepowerAll(tbladmin.getRoleid());
		
		List<Tblpower> tblpower = new ArrayList<>();
		for(int i=0; i<tblrolepower.size();i++){
			tblpower.add(loginMapper.tblpowers(tblrolepower.get(i).getPowid()));
		}
		List<Tblmenu> rootMenut = new ArrayList<Tblmenu>();
		for(int i=0; i<tblpower.size();i++){
			List<Tblmenu> me = loginMapper.tblmenus(tblpower.get(i).getMenid());
			
			for(int j=0;j<me.size();j++){
				rootMenut.add(me.get(j));
				List<Tblmenu> mu =loginMapper.tblmenus(me.get(j).getMenid());
				for (int k = 0; k < mu.size(); k++)
				{
					rootMenut.get(j).setChildMenus(mu);
				}
			}
		}
	
		return rootMenut;

	}
	
}
