package pw2;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable
public class Contacto {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String lastname;
	
	@Persistent
	private String email;
	
	@Persistent
	private String comentary;

	public Contacto(String name, String lastname, String email, String comentary) {
		super();
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.comentary = comentary;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getComentary() {
		return comentary;
	}

	public void setComentary(String comentary) {
		this.comentary = comentary;
	}

	public Key getKey() {
		return key;
	}
	
    public void setKey(Key key) {
        this.key = key;
    }
	
	@Override
	public String toString() {
		String resp = "<br> Nombre : "+name + " <br> Apellido : " + lastname + " <br> Email : " + email + " <br> Color : " + comentary+"<br><br>";  
		return resp;
	}
}

