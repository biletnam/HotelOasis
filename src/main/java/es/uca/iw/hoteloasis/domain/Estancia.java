package es.uca.iw.hoteloasis.domain;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.EntityManager;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.TypedQuery;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findEstanciasByReserva", "findEstanciasByUsuario", "findEstanciasByUsuarioAndHabitacion" })
public class Estancia {

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_check_in;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_check_out;

    /**
     */
    @ManyToOne
    private Reserva reserva;

    /**
     */
    @ManyToOne
    private Habitacion habitacion;

    /**
     */
    @ManyToOne
    private Usuario usuario;

    /**
     */@ManyToMany(cascade = CascadeType.ALL)
    private Set<Bebida_consumo> bebida_consumo = new HashSet<Bebida_consumo>();

    public static TypedQuery<Estancia> findEstanciasByUsuario(Usuario usuario) {
        EntityManager em = Estancia.entityManager();
        String query = "SELECT o FROM Estancia AS o WHERE o.usuario = :usuario AND o.fecha_check_out IS NULL";
        TypedQuery<Estancia> q = em.createQuery(query, Estancia.class);
        q.setParameter("usuario", usuario);
        return q;
    }

    public static TypedQuery<Estancia> findEstanciasByUsuarioAndHabitacion(Usuario usuario, Habitacion habitacion) {
        EntityManager em = Estancia.entityManager();
        String query = "SELECT o FROM Estancia AS o WHERE o.usuario = :usuario AND o.fecha_check_out IS NULL AND o.habitacion = :habitacion";
        TypedQuery<Estancia> q = em.createQuery(query, Estancia.class);
        q.setParameter("usuario", usuario);
        q.setParameter("habitacion", habitacion);
        return q;
    }

    /*Constructor para el checkin*/
    public Estancia(Reserva reserva, Habitacion habitacion, Usuario usuario) {
        this.reserva = reserva;
        this.habitacion = habitacion;
        this.usuario = usuario;
    }

    /**
     */
    @ManyToOne
    private Llamada llamadas;
}
