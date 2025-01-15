package dao;

import java.util.List;

import model.Event;

public interface EventDao { //언제부터 언제까지,를 담을 매개변수 2개
	List<Event> getEventList(String start, String end); //이벤트 기간을 보여주는 메서드
}
