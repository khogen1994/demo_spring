package com.cdac.in;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.MultipartFilter;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	String uploadFileHandler(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, @RequestParam("dept") String dept, @RequestParam("srno") String srno,
			@RequestParam("doctype") String doctype, Model model) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				System.out.println(file.getContentType());
				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				
				File dir = new File(rootPath + File.separator + "tmpFiles" + File.separator + dept + File.separator + srno + File.separator + doctype);
				if (!dir.exists())
					dir.mkdirs();

				
				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name + ".pdf");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="
						+ serverFile.getAbsolutePath());
				
				model.addAttribute("filepath", serverFile.getAbsolutePath());
				
				return "success";
			} catch (Exception e) {
				/*return "You failed to upload " + name + " => " + e.getMessage();*/
				model.addAttribute("errormsg",e.getMessage());
				return "error";
			}
		} else {
			/*return "You failed to upload " + name
					+ " because the file was empty.";*/
			model.addAttribute("errormsg", "upload failed"+ name + "is empty");
			return "error";
		}
	} 
	
	/*
	//ajax
	
	
	@RequestMapping(value="/Uploadajax.html", method=RequestMethod.GET)
	@ResponseBody String uploadfile(@RequestParam("filename") MultipartFile file)
     {
		
		System.out.println(file.getContentType());
		return "succes";
     }*/
 
	
	/**
	 * Upload multiple file using Spring Controller
	 */
	/*@RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST)
	public @ResponseBody
	String uploadMultipleFileHandler(@RequestParam("name") String[] names,
			@RequestParam("file") MultipartFile[] files) {
		

		String names[]=null;
		int j=0;
		
		for(MultipartFile name :files)
		{
			
			System.out.println(name.getOriginalFilename());
			
		}
		
		if (files.length != names.length)
			return "Mandatory information missing";

		String message = "";
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			String name = names[i];
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="
						+ serverFile.getAbsolutePath());

				message = message + "You successfully uploaded file=" + name
						+ "<br />";
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		}
		return message;
	}
	*/
}
