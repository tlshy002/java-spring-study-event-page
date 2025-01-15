package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

import org.springframework.stereotype.Repository;

import model.Event;

@Repository
public class EventDaoImpl implements EventDao {
	private EntityManagerFactory emf;

	@PersistenceUnit
	public void setEmf(EntityManagerFactory emf) {
		this.emf = emf;
	}

	public List<Event> getEventList(String start, String end) {
		EntityManager em = this.emf.createEntityManager();
		List<Event> eventList = em.createQuery("from Event event where event.date >= :startDate and "
				+ "event.date <= :endDate", Event.class).setParameter("startDate", start).setParameter("endDate", end).getResultList();
		return eventList;
	}

}
