package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Event {
	private Integer eventId;
	private String name;
	private String date;
	
	@Id //기본키
	@Column(name="event_id") //DB와 속성이름이 다를경우 명시
	public Integer getEventId() {
		return eventId;
	}
	public void setEventId(Integer eventId) {
		this.eventId = eventId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="day")
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
