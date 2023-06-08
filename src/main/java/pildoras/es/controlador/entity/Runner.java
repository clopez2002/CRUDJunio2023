package pildoras.es.controlador.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="runnerstable")
public class Runner {

    private int id;

    private String nombre;

    private String apellido;

    private int edad;

    private String email;

    private int dorsal;

    private String tiempo;







}
