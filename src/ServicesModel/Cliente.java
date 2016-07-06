package ServicesModel;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable
public class Cliente {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombres;
	
	@Persistent
	private String apellidos;
	
	@Persistent
	private String fecha;
	
	@Persistent
	private String sexo;

	@Persistent
	private String user;
	
	@Persistent
	private String pass;
	
	@Persistent
	 private boolean contest;
	
	public Cliente(String nombres, String apellidos, String fecha, String sexo, String user, String pass,boolean contest) {
		super();
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fecha = fecha;
		this.sexo = sexo;
		this.user = user;
		this.pass = pass;
		this.contest = contest;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String apPat) {
		this.nombres = apPat;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
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
		String resp = "<br> Nombres : "+nombres + " <br> Apellidos : " + apellidos + " <br> Fecha : " + fecha + " <br> Sexo : " + sexo+
					" <br> Usuario : " + user + " <br> Contraseña : " + pass+"<br><br>";  
		return resp;
	}}
