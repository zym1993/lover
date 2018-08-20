package org.great.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.great.bean.Tbladmin;
import org.great.bean.Tblmenu;
import org.great.bean.Tblparam;
import org.great.biz.LoginBiz;
import org.great.biz.ManageBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.regexp.internal.recompile;


@Controller
@RequestMapping("/dept")
public class AdminHandler {
	
	@Resource
	ManageBiz manageBizImpl;
	private Tbladmin tbladmin;
	private List<Tbladmin> tbladminlist;
	
	//localhost:8080/webproj12_springmvc/admin/hello.action
	@RequestMapping("/index.action")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
	}
	
	//localhost:8080/webproj12_springmvc/index.jsp
	//localhost:8080/file/dept/userinfo.action
	@RequestMapping(value="/userinfo.action")
	public ModelAndView userinfo(HttpServletRequest request, 
			@RequestParam(value="adaccount", required=true, defaultValue="empty")String name, 
			String adpassword){
		System.out.println(name + ":" + adpassword);
		System.out.println("userinfo----");
		HttpSession session = request.getSession();
		session.setAttribute("tbladmin", new Tbladmin(name, adpassword));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
	}
	
	@RequestMapping(value="/userinfo1.action")
	public ModelAndView userinfo1(HttpServletRequest request,String pages)
	{
		System.out.println(pages);
		int page = Integer.valueOf(pages);
		if(request.getAttribute("pages")!=null){
			System.out.println(request.getAttribute("pages"));
		 page=Integer.valueOf(request.getAttribute("pages").toString());
		}
		if (page == 0 || page == -1)
		{

			page = 1;
		}
		int endnum = page * 5;
		int startnum = (page - 1) * 5 + 1;
		RowBounds rowBounds = new RowBounds(startnum, endnum);
		tbladminlist = manageBizImpl.getTbladminlist(tbladmin, rowBounds);
		int totalCard = manageBizImpl.getTbladminCount(tbladmin, rowBounds);
		int cardPerPage = 5;
		int totalPages = totalCard % cardPerPage == 0 ? totalCard / cardPerPage : totalCard / cardPerPage + 1;
		HttpSession session = request.getSession();
		session.setAttribute("tbladmins", tbladminlist);
		session.setAttribute("totalPages", totalPages);
//		session.setAttribute("pages", page);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manageuser");
		mav.addObject("pages", page);
		return mav;
	}
	@RequestMapping(value="/userinfo2.action")
	public ModelAndView userinfo2(HttpServletRequest request, 
			String pages,String adminid){
		int adminid1 = Integer.valueOf(adminid);
		HttpSession session = request.getSession();
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("dept/index1");
		System.err.println(adminid);
		System.out.println(adminid);
		manageBizImpl.getDelete(adminid1);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("pages", pages);
//		if (a == true)
//		{
//			info.put("success", true);
//			info.put("message", "添加成功");
//		} else
//		{
//			info.put("success", false);
//			info.put("message", "添加失败");
//		}
		return userinfo1(request,pages);
	}
//	//localhost:8080/webproj12_springmvc/index.jsp
//	@RequestMapping(value="/userinfo2.action")
//	public String userinfo2(HttpServletRequest request, 
//			User user){
//		System.out.println(user);
//		System.out.println("userinfo2������������...");
//		HttpSession session = request.getSession();
//		session.setAttribute("user", user);
//		return "userinfo"; //��ͨ��String���ͷ�����Ϣ
//	}
	
//	//localhost:8080/webproj12_springmvc/index.jsp
//	@RequestMapping(value="/userinfo3.action", method=RequestMethod.POST, produces="application/json;charset=utf-8")
//	public @ResponseBody User userinfo3(String username, String password){
//		System.out.println(username + ":" + password);
//		System.out.println("userinfo3������������...");
//		return new User(username, password);
//	}
//	
//	//localhost:8080/webproj12_springmvc/index.jsp
//	@RequestMapping(value="/userinfo4.action", method=RequestMethod.POST, produces="application/json;charset=utf-8")
//	public @ResponseBody User userinfo4(@RequestBody User user){
//		System.out.println(user);
//		System.out.println("userinfo4������������...");
//		return user;
//	}
//	
	//localhost:8080/webproj12_springmvc/index.jsp
	@RequestMapping(value="/fileact.action", method=RequestMethod.POST)
	public ModelAndView fileact(MultipartFile fileact){
		String filename = fileact.getOriginalFilename();
		System.out.println("��ȡ�����ļ���:" + filename);
		try {
			fileact.transferTo(new File("D:/" + filename));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manageuser");
		return mav;
	}
	
	
	
}
