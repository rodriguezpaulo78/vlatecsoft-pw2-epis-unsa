package ServicesModel;

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
	private String email;
	
	@Persistent
	private String comentary;

	@Persistent
	 private boolean contest;
	 
	 public Contacto(String name, String email, String comentary,boolean contest) {
		super();
		this.name = name;
		this.email = email;
		this.comentary = comentary;
		this.contest = contest;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	public boolean getContest() {
		 return contest;
	}
		 
	public void setContest(boolean contest) {
		 this.contest = contest;
	}

	public Key getKey() {
		return key;
	}
	
    public void setKey(Key key) {
        this.key = key;
    }
	
	@Override
	public String toString() {
		String resp = "<br> Nombre : "+name + " <br> Email : " + email + " <br> Color : " + comentary+"<br><br>";   
		return resp;
	}
}

