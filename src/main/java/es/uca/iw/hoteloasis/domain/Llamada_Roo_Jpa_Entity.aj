// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.hoteloasis.domain;

import es.uca.iw.hoteloasis.domain.Llamada;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Llamada_Roo_Jpa_Entity {
    
    declare @type: Llamada: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Llamada.id;
    
    @Version
    @Column(name = "version")
    private Integer Llamada.version;
    
    public Long Llamada.getId() {
        return this.id;
    }
    
    public void Llamada.setId(Long id) {
        this.id = id;
    }
    
    public Integer Llamada.getVersion() {
        return this.version;
    }
    
    public void Llamada.setVersion(Integer version) {
        this.version = version;
    }
    
}
