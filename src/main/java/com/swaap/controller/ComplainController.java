package com.swaap.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;
import com.swaap.service.ComplainService;
import com.swaap.service.LoginService;
import com.swaap.utils.Basemethods;

@Controller
public class ComplainController {

	@Autowired
	ComplainService complainService;
	
	@Autowired
	LoginService loginService;
	
	private static String UPLOAD_FOLDER = "D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\resources\\static\\adminResources\\image\\complain";
	@RequestMapping(value="/branch/addComplain", method=RequestMethod.GET)
	public ModelAndView loadComplain()
	{
		return new ModelAndView("branch/addComplain","complainVO", new ComplainVO());
	}

	@RequestMapping(value="/branch/insertComplain")
	public ModelAndView insertComplain(@ModelAttribute ComplainVO complainVO,@ModelAttribute LoginVO loginVO, @RequestParam("file") MultipartFile file)
	{
		complainVO.setStatus(true);
		complainVO.setComplainStatus("Pending");
		
		String branch=Basemethods.getUser();
		loginVO.setUsername(branch);
		List branchList=loginService.searchLoginID(branch);
		complainVO.setLoginVO((LoginVO)branchList.get(0));
		
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setComplainDate(formattedDate);
		
		String fileName = complainVO.getComplainSubject();
		try {
			byte[] b = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + fileName);
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(path+fileName));
			bufferedOutputStream.write(b);
			complainVO.setFilePath(path.toString()); 
			complainVO.setFileName(fileName);	
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/branch/index");
	}
	
	@RequestMapping(value="/mall/insertReply")
	public ModelAndView insertReply(@ModelAttribute ComplainVO complainVO)
	{
		//complainVO.setStatus(false);
		complainVO.setComplainStatus("Resolved");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setReplyDate(formattedDate);
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/mall/viewMallComplain");
	}

	@RequestMapping(value="/mall/viewMallComplain")
	public ModelAndView viewMallComplain()
	{
		List complainList=this.complainService.searchBranchComplain();
		return new ModelAndView("mall/viewMallComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/branch/viewBranchComplain")
	public ModelAndView viewBranchComplain(@ModelAttribute LoginVO loginVO)
	{
		String branch=Basemethods.getUser();
		loginVO.setUsername(branch);
		List branchList=loginService.searchLoginID(branch);
		LoginVO loggedInUser=((LoginVO)branchList.get(0));
		List complainList=this.complainService.searchUserComplain(loggedInUser);
		return new ModelAndView("branch/viewBranchComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/mall/reply")
	public ModelAndView replyComplain(@RequestParam int id,@ModelAttribute ComplainVO complainVO)
	{
		complainVO.setId(id);
		List complainList=this.complainService.findByIdComplain(complainVO);
		return new ModelAndView("mall/addReply","complainVO",(ComplainVO)complainList.get(0));
	}
}
