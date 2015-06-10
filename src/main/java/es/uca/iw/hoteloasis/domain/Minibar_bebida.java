package es.uca.iw.hoteloasis.domain;
import javax.persistence.EntityManager;
import javax.persistence.ManyToOne;
import javax.persistence.TypedQuery;
import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = {"findBebidasByMinibar", "findMinibar_bebidasByMinibarAndBebida"})
public class Minibar_bebida {

    /**
     */
    @NotNull
    private int cantidad;

    /**
     */
    @NotNull
    @ManyToOne
    private Minibar minibar;

    /**
     */
    @NotNull
    @ManyToOne
    private Bebida bebida;
    

	public static TypedQuery<Bebida> findBebidasByMinibar(Minibar minibar) {
        EntityManager em = Minibar_bebida.entityManager();
        TypedQuery<Bebida> q = em.createQuery("SELECT o.bebida FROM Minibar_bebida AS o WHERE o.minibar = :minibar", Bebida.class);
        q.setParameter("minibar", minibar);
        return q;
    }
}
