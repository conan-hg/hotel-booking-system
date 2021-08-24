package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Table
@NamedQueries({
		@NamedQuery(
				name = "checkRegisteredCode",
				query = "SELECT COUNT(g) FROM Guest AS g WHERE g.name = :name"
		),
		@NamedQuery(
				name = "checkLoginCodeAndPassword",
				query = "SELECT g FROM Guest AS g WHERE g.name = :name AND g.password = :pass"
		)
})
@Entity
public class Guest {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "name", nullable = false)
	private String name;

	@Column(name = "password", length = 64, nullable = false)
	private String password;

	@Column(name = "phone", nullable = false)
	private Integer phone;

	@Column(name = "mail", nullable = false)
	private String mail;

	@Column(name = "updated_at", nullable = false)
	private Timestamp updated_at;

	@Column(name = "created_at", nullable = false)
	private Timestamp created_at;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassward(String password) {
		this.password = password;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
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

}
