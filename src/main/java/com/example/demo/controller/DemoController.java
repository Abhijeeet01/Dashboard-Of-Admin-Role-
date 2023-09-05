package com.example.demo.controller;

import com.example.demo.model.*;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.repository.AdminDAO;
import com.example.demo.repository.UserDAO;
import com.example.demo.repository.loginDAO;

import jakarta.persistence.metamodel.SetAttribute;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class DemoController {
	@Autowired
	private loginDAO loginD;
	@Autowired
	private UserDAO userD;
	@Autowired
	private AdminDAO adminD;

	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String Register(HttpServletRequest request) throws NoSuchAlgorithmException {
		int s1 = Integer.parseInt(request.getParameter("t1"));
		String s2 = request.getParameter("t2");
		String s3 = request.getParameter("t3");
		String s4 = request.getParameter("t4");
		String s5 = request.getParameter("t5");
		String s6 = request.getParameter("t6");
		String s7 = request.getParameter("t7");
		String s10 = request.getParameter("t8");
		String password = s10;
		MessageDigest m = MessageDigest.getInstance("SHA");
		m.update(password.getBytes());
		byte[] b = m.digest();
		String s8 = new String(b);
		Admin admin = new Admin(s1, s2, s3, s4, s5, s6, s7, s8);
		System.out.println(admin);
		adminD.save(admin);
		return "Signin.jsp";
	}

	@RequestMapping("/")
	public String Login() {
		return "welcome.jsp";
	}

	@GetMapping("/all")
	public List<Login> getLogin() {
		return loginD.findAll();
	}

	@RequestMapping(path = "/verify", method = RequestMethod.POST)
	public String welcome(@RequestParam("t1") String s1, @RequestParam("t2") String p, HttpSession session)
			throws NoSuchAlgorithmException {
		MessageDigest m = MessageDigest.getInstance("SHA");
		m.update(p.getBytes());
		byte[] b = m.digest();

		String s2 = new String(b);
		int maleUser = 1;
		int femaleUser = 1;
		int totalUser = 1;
		List l1 = adminD.findAll();
		Iterator itr = l1.iterator();
		while (itr.hasNext()) {
			totalUser++;
			Admin a = (com.example.demo.model.Admin) itr.next();
			String u = a.getUsername();
			String p1 = a.getPassword();
			if (a.getGender() == "male") {
				maleUser++;
			}
			if (a.getGender() == "female") {
				femaleUser++;
			}
			if (s1.equals(u) && s2.equals(p1)) {
				System.out.println("f" + femaleUser + "m" + maleUser + "t" + totalUser);
				session.setAttribute("t1", totalUser);
				session.setAttribute("t2", maleUser);
				session.setAttribute("t3", femaleUser);
				return "dashboard.jsp";
			}
		}
		return "Signin.jsp";
	}

	@RequestMapping(path = "/adduser", method = RequestMethod.POST)
	public String adduser(@RequestParam("t1") int id, @RequestParam("t2") String firstname,
			@RequestParam("t3") String lastname, @RequestParam("t4") String username, @RequestParam("t5") String gender,
			@RequestParam("t6") String contact, @RequestParam("t7") String email, @RequestParam("t8") String p,
			HttpSession session) throws NoSuchAlgorithmException {
		MessageDigest m = MessageDigest.getInstance("SHA");
		m.update(p.getBytes());
		byte[] b = m.digest();
		String password = new String(b);
		User user = new User(id, firstname, lastname, username, gender, contact, email, password);
		System.out.println(user);
		session.setAttribute("name", user);
		userD.save(user);
		return "redirect:/adduserreturn.jsp";
	}

	@RequestMapping(path = "/searchbyid", method = RequestMethod.POST)
	public String search(HttpServletRequest request, HttpSession session) {
		int i = Integer.parseInt(request.getParameter("t1"));
		User user = userD.findById(i).get();
		String s = user.toString();
		session.setAttribute("name", s);
		return "findbyid.jsp";
	}

	@RequestMapping(path = "/edituser", method = RequestMethod.POST)
	public String edituser(@RequestParam("t1") int id, @RequestParam("t2") String firstname,
			@RequestParam("t3") String lastname, @RequestParam("t4") String username, @RequestParam("t5") String gender,
			@RequestParam("t6") String contact, @RequestParam("t7") String email, @RequestParam("t8") String password,
			HttpSession session) {
		User user = new User(id, firstname, lastname, username, gender, contact, email, password);
		List l = userD.findAll();
		Iterator itr = l.iterator();
		String s1 = "User is Added";
		String s2 = "User is not available";
		while (itr.hasNext()) {
			User u = (User) itr.next();
			if (u.getId() == id) {
				userD.save(user);
				session.setAttribute("name", s1);
				return "edituser.jsp";
			} else {
				session.setAttribute("name", s2);
				return "edituser.jsp";
			}
		}
		session.setAttribute("name", s2);
		return "edituser.jsp";
	}

	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(HttpServletRequest request, HttpSession session) {
		int id = Integer.parseInt(request.getParameter("t1"));
		List l = userD.findAll();
		Iterator itr = l.iterator();
		String s1 = "User is deleted";
		String s2 = "User is not available";
		while (itr.hasNext()) {
			User u = (User) itr.next();
			System.out.println(u);
			if (u.getId() == id) {
				userD.deleteById(id);
				session.setAttribute("name", s1);
				return "deletebyid.jsp";
			}
		}
		session.setAttribute("name", s2);
		return "deletebyid.jsp";
	}

	@GetMapping("/alluser")
	public String getAllEmployees(HttpSession session) {
		ArrayList l = (ArrayList) userD.findAll();
		System.out.println("array list is");
		System.out.println(l);
		User[] u = new User[12];
		Object[] userArr = l.toArray();
		for (int i = 0; i < u.length; i++) {
			User uu = new User();
			if (i < userArr.length) {
				u[i] = (User) userArr[i];
			} else {
				u[i] = uu;
			}
		}
		session.setAttribute("name1", u[0]);
		session.setAttribute("name2", u[1]);
		session.setAttribute("name3", u[2]);
		session.setAttribute("name4", u[3]);
		session.setAttribute("name5", u[4]);
		session.setAttribute("name6", u[5]);
		session.setAttribute("name7", u[6]);
		session.setAttribute("name8", u[7]);
		session.setAttribute("name9", u[8]);
		session.setAttribute("name10", u[9]);
		session.setAttribute("name11", u[10]);
		session.setAttribute("name12", u[11]);
		return "displayalluser.jsp";
	}

	@RequestMapping(path = "/verifyuserylogin", method = RequestMethod.POST)
	public String userLogin(@RequestParam("t1") String s1, @RequestParam("t2") String s, HttpSession session)
			throws NoSuchAlgorithmException {

		MessageDigest m = MessageDigest.getInstance("SHA");
		m.update(s.getBytes());
		byte[] b = m.digest();
		String s2 = new String(b);
		List<User> l = userD.findAll();
		Iterator itr = l.iterator();
		while (itr.hasNext()) {
			User u = (User) itr.next();
			session.setAttribute("name", u);
			if (u.getUsername().equals(s1) && u.getPassword().equals(s2)) {
				return "userdashboard.jsp";
			}
		}

		return "userlogin.jsp";
	}

	@RequestMapping(path = "/updatepassword", method = RequestMethod.POST)
	public String updatepassword(@RequestParam("t1") String s1, @RequestParam("t2") String s22,
			@RequestParam("t3") String s3, @RequestParam("t4") String s, HttpSession session)
			throws NoSuchAlgorithmException {

		MessageDigest m = MessageDigest.getInstance("SHA");
		m.update(s.getBytes());
		byte[] b = m.digest();
		String s4 = new String(b);

		MessageDigest m1 = MessageDigest.getInstance("SHA");
		m1.update(s22.getBytes());
		byte[] b1 = m1.digest();
		String s2 = new String(b1);

		if (s3.equals(s)) {

			List l = userD.findAll();
			Iterator itr = l.iterator();

			while (itr.hasNext()) {
				User u = (User) itr.next();
				if(u.getUsername().equals(s1) && u.getPassword().equals(s2)) {
					userD.deleteById(u.getId());
					System.out.println(s4);
					System.out.println(u.getPassword());
					u.setPassword(s4);
					System.out.println(u.getPassword());

					userD.save(u);
					return "userlogin.jsp";
				}
			}
		}

		return "changeuserpassword.jsp";
	}

}