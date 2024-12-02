package com.infosys.movieSystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.TicketBooking;

@Repository
public interface TicketBookingRepository extends JpaRepository<TicketBooking, Long> {

	@Query("select max(ticketId) from TicketBooking")
	public Long getLastId();
	
	@Query("SELECT t FROM TicketBooking t WHERE t.ticketId = :ticketId")
	Optional<TicketBooking> getTicket1(@Param("ticketId") Long ticketId);
}
 