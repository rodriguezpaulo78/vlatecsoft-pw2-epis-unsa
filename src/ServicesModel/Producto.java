package ServicesModel;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable
public class Producto {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String grupo;
	
	@Persistent
	private String marca;
	
	@Persistent
	private String linea;
	
	@Persistent
	private String item;
	
	@Persistent
	private String descripcion;
	
	@Persistent
	private String fecha;

	@Persistent
	private String precio;
	
	@Persistent
	 private boolean contest;
	 
	 public Producto(String grupo, String marca, String linea,String item, String descripcion, String fecha,String precio,boolean contest) {
		super();
		this.grupo = grupo;
		this.marca = marca;
		this.linea = linea;
		this.item = item;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.contest = contest;
		this.precio = precio;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getLinea() {
		return linea;
	}

	public void setLinea(String linea) {
		this.linea = linea;
	}
	
	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
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
		String resp = "<br> Grupo : "+grupo + " <br> Marca : " + marca + " <br> Linea : " + linea+"<br> Item : "+item + " <br> Descripcion : " + descripcion + " <br> Fecha : " + fecha+"<br><br>";   
		return resp;
	}
}