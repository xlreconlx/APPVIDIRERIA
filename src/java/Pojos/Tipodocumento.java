package Pojos;
// Generated 2/11/2016 10:27:29 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Tipodocumento generated by hbm2java
 */
public class Tipodocumento  implements java.io.Serializable {


     private int idtipodocumento;
     private String nombretd;
     private Set clientes = new HashSet(0);
     private Set empleados = new HashSet(0);

    public Tipodocumento() {
    }

	
    public Tipodocumento(int idtipodocumento, String nombretd) {
        this.idtipodocumento = idtipodocumento;
        this.nombretd = nombretd;
    }
    public Tipodocumento(int idtipodocumento, String nombretd, Set clientes, Set empleados) {
       this.idtipodocumento = idtipodocumento;
       this.nombretd = nombretd;
       this.clientes = clientes;
       this.empleados = empleados;
    }
   
    public int getIdtipodocumento() {
        return this.idtipodocumento;
    }
    
    public void setIdtipodocumento(int idtipodocumento) {
        this.idtipodocumento = idtipodocumento;
    }
    public String getNombretd() {
        return this.nombretd;
    }
    
    public void setNombretd(String nombretd) {
        this.nombretd = nombretd;
    }
    public Set getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set clientes) {
        this.clientes = clientes;
    }
    public Set getEmpleados() {
        return this.empleados;
    }
    
    public void setEmpleados(Set empleados) {
        this.empleados = empleados;
    }




}

