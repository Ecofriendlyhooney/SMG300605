package controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import beans.Skb;
import dao.MainDao;

@Controller
public class SkbController {
	@Autowired
	MainDao skbdao;

	/* SKB Public entrance */
	@RequestMapping("/badminton/skb/entrance")
	public String skbPublic(Model m) {
		List<Skb> list = skbdao.getSkbSchedule();
		m.addAttribute("list", list);
		return "skbPublicPage";
	}
	
	/* SKB about us */
	@RequestMapping("/badminton/skb/skbaboutus")
	public String skbAboutUs() {
		return "skbAboutUs";
	}
	
	/* SKB Map */
	@RequestMapping("/badminton/skb/skbmap")
	public String skbMap() {
		return "skbMap";
	}
	
	/*============ Done till here */
	
	/* SKB Admin View */
	@RequestMapping("/badminton/skb/admin")
	public String skbAdmin(Model m) {
		List<Skb> list = skbdao.getSkbSchedule();
		m.addAttribute("list", list);
		return "skbAdminPage";
	}

	/* SKB create */
	@RequestMapping("/badminton/skb/admin/skbform")
	public String showform(Model m) {
		m.addAttribute("command", new Skb());
		return "skbform";
	}
	
	/* SKB edit */
	@RequestMapping(value = "/badminton/skb/admin/editskb/{skb_event_id}")
	public String edit(@PathVariable int skb_event_id, Model m) {
		Skb skb = skbdao.getSkbById(skb_event_id);
//		m.addAttribute("command", skb);
		m.addAttribute("skb", skb);
		return "skbeditform";
	}

	/* SKB save */
	@RequestMapping(value = "/badminton/skb/admin/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("skb") Skb skb) {
		skbdao.save(skb);
		return "redirect:/badminton/skb/admin";
	}

	/* SKB update */
	@RequestMapping(value = "/badminton/skb/admin/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("skb") Skb skb) {
		skbdao.update(skb);
		return "redirect:/badminton/skb/admin";
	}
	
	/* SKB logical Delete */
	@RequestMapping(value = "/badminton/skb/admin/logicDeleteskb/{id}", method = RequestMethod.POST)
	public String logicaldelete(@ModelAttribute("skb") Skb skb) {
		skbdao.logicDelete(skb);
		return "redirect:/badminton/skb/admin";
	}

	/* SKB delete */
	@RequestMapping(value = "/badminton/skb/admin/deleteskb/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		skbdao.deleteSkb(id);
		return "redirect:/badminton/skb/admin";
	}


	
}