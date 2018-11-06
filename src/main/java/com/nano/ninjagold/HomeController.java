package com.nano.ninjagold;

import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index(HttpSession session) {
		if (session.getAttribute("gold") == null) {
			session.setAttribute("gold",0);
		}
		
		if (session.getAttribute("activities") == null) {
			session.setAttribute("activities", "");
		}
		
		return "index.jsp";
	}
	
	@RequestMapping(value="/process_money", method=RequestMethod.POST)
	public String processMoney(HttpSession session, @RequestParam(value="building") String building) {
		Integer gold = (Integer) session.getAttribute("gold");
		int winnings = 0;
		String report="";
		Date timestamp = new Date();
		Random r = new Random();
		switch(building) {
			case "farm":
				winnings = 10 + r.nextInt(11);
				report = "<span class='green-text'>Earned "+ winnings +" from the " + building + " " + timestamp + "</span><br>";
				break;
			case "cave":
				winnings = 5 + r.nextInt(6);
				report = "<span class='green-text'>Earned "+ winnings +" from the " + building + " " + timestamp + "</span><br>";
				break;
			case "house":
				winnings = 2 + r.nextInt(5);
				report = "<span class='green-text'>Earned "+ winnings +" from the " + building + " " + timestamp + "</span><br>";
				break;
			case "casino":
				winnings = -50 + r.nextInt(101);
				if (winnings < -1*gold) {
		            winnings = -1*gold;
				}
		        if (winnings==0) {
		            report="Went to the casino and came out even "+timestamp+"<br>";
		        } else if (winnings>0) {
		        	report = "<span class='green-text'>Went to the casino and won " + winnings +" gold! "+ timestamp +"</span><br>";
		        } else {
		        	report = "<span class='red-text'>Went to the casino and lost "+ -1*winnings +" gold... Ouch! "+ timestamp +"</span><br>";
		        }
				break;
			default:
				break;
		}
		gold += winnings;
		String activities = report + session.getAttribute("activities");
		session.setAttribute("activities", activities);
		session.setAttribute("gold", gold);
		return "redirect:/";
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}


