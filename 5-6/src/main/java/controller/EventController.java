package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.EventDao;
import model.Event;

@Controller
public class EventController {
	@Autowired
	private EventDao eventDao;
	
	@RequestMapping(value="/event/event.html", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("input");
		return mav;
	}
	
	@RequestMapping(value="/event/event.html", method=RequestMethod.POST)
	public ModelAndView detail(String start, String end) {
		List<Event> eventList = this.eventDao.getEventList(start, end);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("eventList", eventList);
		
		ModelAndView mav = new ModelAndView();
		mav.addAllObjects(model);
		mav.setViewName("eventList");
		return mav;
	}
}
