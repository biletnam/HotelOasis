// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.hoteloasis.domain;

import es.uca.iw.hoteloasis.domain.Bebida;
import es.uca.iw.hoteloasis.domain.Bebida_consumo;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Bebida_consumo_Roo_Finder {
    
    public static Long Bebida_consumo.countFindBebida_consumoesByBebida(Bebida bebida) {
        if (bebida == null) throw new IllegalArgumentException("The bebida argument is required");
        EntityManager em = Bebida_consumo.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Bebida_consumo AS o WHERE o.bebida = :bebida", Long.class);
        q.setParameter("bebida", bebida);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Bebida_consumo> Bebida_consumo.findBebida_consumoesByBebida(Bebida bebida) {
        if (bebida == null) throw new IllegalArgumentException("The bebida argument is required");
        EntityManager em = Bebida_consumo.entityManager();
        TypedQuery<Bebida_consumo> q = em.createQuery("SELECT o FROM Bebida_consumo AS o WHERE o.bebida = :bebida", Bebida_consumo.class);
        q.setParameter("bebida", bebida);
        return q;
    }
    
    public static TypedQuery<Bebida_consumo> Bebida_consumo.findBebida_consumoesByBebida(Bebida bebida, String sortFieldName, String sortOrder) {
        if (bebida == null) throw new IllegalArgumentException("The bebida argument is required");
        EntityManager em = Bebida_consumo.entityManager();
        String jpaQuery = "SELECT o FROM Bebida_consumo AS o WHERE o.bebida = :bebida";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Bebida_consumo> q = em.createQuery(jpaQuery, Bebida_consumo.class);
        q.setParameter("bebida", bebida);
        return q;
    }
    
}
