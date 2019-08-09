package controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import beans.Tse;
import dao.MainDao;

@Controller
public class TseController {
	@Autowired
	MainDao tsedao;

	@RequestMapping("/dance/tse/entrance")
	public String tsePublic(Model m) {
		List<Tse> list = tsedao.getTseTodaySchedule();
		m.addAttribute("list", list);
		return "tsePublicToday";
	}

	@RequestMapping("/dance/tse/thisweek")
	public String tseThisWeek(Model m) {
		List<Tse> list = tsedao.getTseSchedule();
		m.addAttribute("list", list);
		return "tsePublicThisWeek";
	}
	
	/* TSE Admin View */
	@RequestMapping("/dance/tse/admin")
	public String tseAdmin(Model m) {
		List<Tse> list = tsedao.getTseSchedule();
		m.addAttribute("list", list);
		return "tseAdminPage";
	}

//	/* TSE edit */
//	@RequestMapping(value = "/dance/tse/admin/edittse/{id}")
//	public String edit(@PathVariable int id, Model m) {
//		Tse tse = tsedao.getTseById(id);
//		m.addAttribute("command", tse);
//		return "tseeditform";
//	}
//
//	/* TSE create */
//	@RequestMapping(value = "/dance/tse/admin/save", method = RequestMethod.POST)
//	public String save(@ModelAttribute("tse") Tse tse) {
//		tsedao.save(tse);
//		return "redirect:/dance/tse/admin";
//	}
//
//	/* TSE add */
//	@RequestMapping("/dance/tse/admin/tseform")
//	public String showform(Model m) {
//		m.addAttribute("command", new Tse());
//		return "tseform";
//	}
//
//	/* TSE update */
//	@RequestMapping(value = "/dance/tse/admin/editsave", method = RequestMethod.POST)
//	public String editsave(@ModelAttribute("tse") Tse tse) {
//		tsedao.update(tse);
//		return "redirect:/dance/tse/admin";
//	}
//
//	/* TSE delete */
//	@RequestMapping(value = "/dance/tse/admin/deletetse/{id}", method = RequestMethod.GET)
//	public String delete(@PathVariable int id) {
//		tsedao.deleteTse(id);
//		return "redirect:/dance/tse/admin";
//	}

}