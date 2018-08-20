package org.great.biz;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.great.bean.Tbladmin;
import org.great.mapper.LoginMapper;
//import org.great.mapper.ManageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ManageBizImpl implements ManageBiz
{
	@Resource
	private LoginMapper loginMapper;

	@Override
	public Tbladmin geTbladmin(String adaccount)
	{
		
		return loginMapper.findByAccount1(adaccount);
	}

	@Override
	public List<Tbladmin> getTbladminlist(Tbladmin tbladmin, RowBounds rowBounds)
	{
		
		return loginMapper.tbladminlist(tbladmin, rowBounds);
	}

	@Override
	public int getTbladminCount(Tbladmin tbladmin, RowBounds rowBounds)
	{
		return loginMapper.tbladminCount(tbladmin, rowBounds);
	}

	@Override
	public boolean getInsertAdmin(Tbladmin tbladmin)
	{
		return loginMapper.insertAdmin(tbladmin);
	}

	@Override
	public int getDelete(int adminid)
	{
		return loginMapper.deleteAdmin(adminid);
	}

	@Override
	public int getUpdate(int paramid, int adminid)
	{
		// TODO Auto-generated method stub
		return loginMapper.updateAdmin(paramid, adminid);
	}

}
