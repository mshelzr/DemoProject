package pe.fap.hospital.citamedica.model;

import java.io.Serializable;

public class Account implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 990309356830217729L;
	private int id;
	private String name;
	private String lastname;
	private int dni;
	private int phone;
	
	public Account() {
		super();
	}
	
	public Account(int id, String name, String lastname, int dni, int phone) {
		super();
		this.id = id;
		this.name = name;
		this.lastname = lastname;
		this.dni = dni;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", name=" + name + ", lastname=" + lastname + ", dni=" + dni + ", phone=" + phone
				+ "]";
	}
	
}
