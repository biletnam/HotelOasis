// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.hoteloasis.domain;

import es.uca.iw.hoteloasis.domain.Minibar_bebida;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Minibar_bebida_Roo_Jpa_Entity {
    
    declare @type: Minibar_bebida: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Minibar_bebida.id;
    
    @Version
    @Column(name = "version")
    private Integer Minibar_bebida.version;
    
    public Long Minibar_bebida.getId() {
        return this.id;
    }
    
    public void Minibar_bebida.setId(Long id) {
        this.id = id;
    }
    
    public Integer Minibar_bebida.getVersion() {
        return this.version;
    }
    
    public void Minibar_bebida.setVersion(Integer version) {
        this.version = version;
    }
    
}