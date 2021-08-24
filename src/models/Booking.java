package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "booking")
@Entity
public class Booking {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "guest_id", nullable = false)
	private Integer guest_id;

	@Column(name = "room_type", nullable = false)
	private Integer room_type;

	@Column(name = "number_of_people", nullable = false)
	private Integer number_of_people;

	@Column(name = "content", nullable = false)
	private String content;

	@Column(name = "booking_date", nullable = false)
	private Timestamp booking_date;

	@Column(name = "updated_at", nullable = false)
	private Timestamp updated_at;

	@Column(name = "created_at", nullable = false)
	private Timestamp created_at;

	@Column(name = "delete_flag", nullable = false)
	private Integer delete_flag;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getGuest_id() {
		return guest_id;
	}

	public void setGuest_id(Integer guest_id) {
		this.guest_id = guest_id;
	}

	public Integer getRoom_type() {
		return room_type;
	}

	public void setRoom_type(Integer room_type) {
		this.room_type = room_type;
	}

	public Integer getNumber_of_people() {
		return number_of_people;
	}

	public void setNumber_of_people(Integer number_of_people) {
		this.number_of_people = number_of_people;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(Timestamp booking_date) {
		this.booking_date = booking_date;
	}

	public Timestamp getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	public Integer getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(Integer delete_flag) {
		this.delete_flag = delete_flag;
	}



}
