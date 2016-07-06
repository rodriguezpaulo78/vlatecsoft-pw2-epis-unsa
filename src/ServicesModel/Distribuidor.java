package ServicesModel;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable
public class Distribuidor {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String apPat;
	
	@Persistent
	private String apMat;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String dni;

	@Persistent
	private String email;
	
	@Persistent
	private String tel;
	
	@Persistent
	private String user;
	
	@Persistent
	private String pass;
	
	@Persistent
	 private boolean contest;
	
	public Distribuidor(String apPat, String apMat, String nombre, String dni, String email, String tel, String user, String pass,boolean contest) {
		super();
		this.apPat = apPat;
		this.apMat = apMat;
		this.nombre = nombre;
		this.dni = dni;
		this.email = email;
		this.tel = tel;
		this.user = user;
		this.pass = pass;
		this.contest = contest;
	}

	public String getApPat() {
		return apPat;
	}

	public void setApPat(String apPat) {
		this.apPat = apPat;
	}

	public String getApMat() {
		return apMat;
	}

	public void setApMat(String apMat) {
		this.apMat = apMat;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return apMat;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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
		String resp = "<br> Apellido Paterno : "+apPat + " <br> Apellido Materno: " + apMat + " <br> Nombre : " + nombre + " <br> Dni : " + dni+
					"<br> Email : "+email + " <br> Telefono : " + tel + " <br> Usuario : " + user + " <br> Contraseña : " + pass+"<br><br>";  
		return resp;
	}
}