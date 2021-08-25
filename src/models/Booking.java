package models;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Table(name = "booking")
@NamedQueries({
	@NamedQuery(
			name = "getAllbooking",
			query = "SELECT b FROM Booking AS b ORDER BY b.id DESC")
})
@Entity
public class Booking {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "guest_id", nullable = false)
	private Guest guest;

	@Column(name = "room_type", nullable = false)
	private Integer room_type;

	@Column(name = "number_people", nullable = false)
	private Integer number_people;

	@Column(name = "booking_date", nullable = false)
	private Date booking_date;

	@Lob
	@Column(name = "content", nullable = false)
	private String content;

	@Column(name = "created_at",  nullable = false)
	private Timestamp created_at;

	@Column(name = "updated_at",  nullable = false)
	private Timestamp updated_at;

	@Column(name = "delete_flag",  nullable = false)
	private Integer delete_flag;


	public Integer getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(Integer delete_flag) {
		this.delete_flag = delete_flag;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Guest getGuest() {
		return guest;
	}

	public void setGuest(Guest guest) {
		this.guest = guest;
	}

	public Integer getRoom_type() {
		return room_type;
	}

	public void setRoom_type(Integer room_type) {
		this.room_type = room_type;
	}

	public Integer getNumber_people() {
		return number_people;
	}

	public void setNumber_people(Integer number_people) {
		this.number_people = number_people;
	}

	public Date getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	public Timestamp getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}









}

















