// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.hoteloasis.web;

import es.uca.iw.hoteloasis.domain.Bebida;
import es.uca.iw.hoteloasis.domain.Bebida_consumo;
import es.uca.iw.hoteloasis.domain.Categoria;
import es.uca.iw.hoteloasis.domain.Estancia;
import es.uca.iw.hoteloasis.domain.Habitacion;
import es.uca.iw.hoteloasis.domain.Hotel;
import es.uca.iw.hoteloasis.domain.Llamada;
import es.uca.iw.hoteloasis.domain.Minibar;
import es.uca.iw.hoteloasis.domain.Minibar_bebida;
import es.uca.iw.hoteloasis.domain.Reserva;
import es.uca.iw.hoteloasis.domain.Rol;
import es.uca.iw.hoteloasis.domain.Tarifa;
import es.uca.iw.hoteloasis.domain.Usuario;
import es.uca.iw.hoteloasis.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Bebida, String> ApplicationConversionServiceFactoryBean.getBebidaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Bebida, java.lang.String>() {
            public String convert(Bebida bebida) {
                return new StringBuilder().append(bebida.getNombre()).append(' ').append(bebida.getCoste()).toString();
            }
        };
    }
    
    public Converter<Long, Bebida> ApplicationConversionServiceFactoryBean.getIdToBebidaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Bebida>() {
            public es.uca.iw.hoteloasis.domain.Bebida convert(java.lang.Long id) {
                return Bebida.findBebida(id);
            }
        };
    }
    
    public Converter<String, Bebida> ApplicationConversionServiceFactoryBean.getStringToBebidaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Bebida>() {
            public es.uca.iw.hoteloasis.domain.Bebida convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Bebida.class);
            }
        };
    }
    
    public Converter<Bebida_consumo, String> ApplicationConversionServiceFactoryBean.getBebida_consumoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Bebida_consumo, java.lang.String>() {
            public String convert(Bebida_consumo bebida_consumo) {
                return new StringBuilder().append(bebida_consumo.getCantidad()).toString();
            }
        };
    }
    
    public Converter<Long, Bebida_consumo> ApplicationConversionServiceFactoryBean.getIdToBebida_consumoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Bebida_consumo>() {
            public es.uca.iw.hoteloasis.domain.Bebida_consumo convert(java.lang.Long id) {
                return Bebida_consumo.findBebida_consumo(id);
            }
        };
    }
    
    public Converter<String, Bebida_consumo> ApplicationConversionServiceFactoryBean.getStringToBebida_consumoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Bebida_consumo>() {
            public es.uca.iw.hoteloasis.domain.Bebida_consumo convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Bebida_consumo.class);
            }
        };
    }
    
    public Converter<Categoria, String> ApplicationConversionServiceFactoryBean.getCategoriaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Categoria, java.lang.String>() {
            public String convert(Categoria categoria) {
                return new StringBuilder().append(categoria.getNombre()).append(' ').append(categoria.getDescripcion()).append(' ').append(categoria.getPrecio_categoria()).toString();
            }
        };
    }
    
    public Converter<Long, Categoria> ApplicationConversionServiceFactoryBean.getIdToCategoriaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Categoria>() {
            public es.uca.iw.hoteloasis.domain.Categoria convert(java.lang.Long id) {
                return Categoria.findCategoria(id);
            }
        };
    }
    
    public Converter<String, Categoria> ApplicationConversionServiceFactoryBean.getStringToCategoriaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Categoria>() {
            public es.uca.iw.hoteloasis.domain.Categoria convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Categoria.class);
            }
        };
    }
    
    public Converter<Estancia, String> ApplicationConversionServiceFactoryBean.getEstanciaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Estancia, java.lang.String>() {
            public String convert(Estancia estancia) {
                return new StringBuilder().append(estancia.getFecha_check_in()).append(' ').append(estancia.getFecha_check_out()).toString();
            }
        };
    }
    
    public Converter<Long, Estancia> ApplicationConversionServiceFactoryBean.getIdToEstanciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Estancia>() {
            public es.uca.iw.hoteloasis.domain.Estancia convert(java.lang.Long id) {
                return Estancia.findEstancia(id);
            }
        };
    }
    
    public Converter<String, Estancia> ApplicationConversionServiceFactoryBean.getStringToEstanciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Estancia>() {
            public es.uca.iw.hoteloasis.domain.Estancia convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Estancia.class);
            }
        };
    }
    
    public Converter<Habitacion, String> ApplicationConversionServiceFactoryBean.getHabitacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Habitacion, java.lang.String>() {
            public String convert(Habitacion habitacion) {
                return new StringBuilder().append(habitacion.getNumero()).toString();
            }
        };
    }
    
    public Converter<Long, Habitacion> ApplicationConversionServiceFactoryBean.getIdToHabitacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Habitacion>() {
            public es.uca.iw.hoteloasis.domain.Habitacion convert(java.lang.Long id) {
                return Habitacion.findHabitacion(id);
            }
        };
    }
    
    public Converter<String, Habitacion> ApplicationConversionServiceFactoryBean.getStringToHabitacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Habitacion>() {
            public es.uca.iw.hoteloasis.domain.Habitacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Habitacion.class);
            }
        };
    }
    
    public Converter<Hotel, String> ApplicationConversionServiceFactoryBean.getHotelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Hotel, java.lang.String>() {
            public String convert(Hotel hotel) {
                return new StringBuilder().append(hotel.getNombre()).append(' ').append(hotel.getProvincia()).append(' ').append(hotel.getPoblacion()).append(' ').append(hotel.getDireccion()).toString();
            }
        };
    }
    
    public Converter<Long, Hotel> ApplicationConversionServiceFactoryBean.getIdToHotelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Hotel>() {
            public es.uca.iw.hoteloasis.domain.Hotel convert(java.lang.Long id) {
                return Hotel.findHotel(id);
            }
        };
    }
    
    public Converter<String, Hotel> ApplicationConversionServiceFactoryBean.getStringToHotelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Hotel>() {
            public es.uca.iw.hoteloasis.domain.Hotel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Hotel.class);
            }
        };
    }
    
    public Converter<Llamada, String> ApplicationConversionServiceFactoryBean.getLlamadaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Llamada, java.lang.String>() {
            public String convert(Llamada llamada) {
                return new StringBuilder().append(llamada.getMinutos_nacionales()).append(' ').append(llamada.getMinutos_internacionales()).append(' ').append(llamada.getMinutos_internet()).toString();
            }
        };
    }
    
    public Converter<Long, Llamada> ApplicationConversionServiceFactoryBean.getIdToLlamadaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Llamada>() {
            public es.uca.iw.hoteloasis.domain.Llamada convert(java.lang.Long id) {
                return Llamada.findLlamada(id);
            }
        };
    }
    
    public Converter<String, Llamada> ApplicationConversionServiceFactoryBean.getStringToLlamadaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Llamada>() {
            public es.uca.iw.hoteloasis.domain.Llamada convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Llamada.class);
            }
        };
    }
    
    public Converter<Minibar, String> ApplicationConversionServiceFactoryBean.getMinibarToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Minibar, java.lang.String>() {
            public String convert(Minibar minibar) {
                return new StringBuilder().append(minibar.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Minibar> ApplicationConversionServiceFactoryBean.getIdToMinibarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Minibar>() {
            public es.uca.iw.hoteloasis.domain.Minibar convert(java.lang.Long id) {
                return Minibar.findMinibar(id);
            }
        };
    }
    
    public Converter<String, Minibar> ApplicationConversionServiceFactoryBean.getStringToMinibarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Minibar>() {
            public es.uca.iw.hoteloasis.domain.Minibar convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Minibar.class);
            }
        };
    }
    
    public Converter<Minibar_bebida, String> ApplicationConversionServiceFactoryBean.getMinibar_bebidaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Minibar_bebida, java.lang.String>() {
            public String convert(Minibar_bebida minibar_bebida) {
                return new StringBuilder().append(minibar_bebida.getCantidad()).toString();
            }
        };
    }
    
    public Converter<Long, Minibar_bebida> ApplicationConversionServiceFactoryBean.getIdToMinibar_bebidaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Minibar_bebida>() {
            public es.uca.iw.hoteloasis.domain.Minibar_bebida convert(java.lang.Long id) {
                return Minibar_bebida.findMinibar_bebida(id);
            }
        };
    }
    
    public Converter<String, Minibar_bebida> ApplicationConversionServiceFactoryBean.getStringToMinibar_bebidaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Minibar_bebida>() {
            public es.uca.iw.hoteloasis.domain.Minibar_bebida convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Minibar_bebida.class);
            }
        };
    }
    
    public Converter<Reserva, String> ApplicationConversionServiceFactoryBean.getReservaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Reserva, java.lang.String>() {
            public String convert(Reserva reserva) {
                return new StringBuilder().append(reserva.getFecha_reserva()).append(' ').append(reserva.getFecha_entrada()).append(' ').append(reserva.getFecha_salida()).append(' ').append(reserva.getFecha_cancelacion()).toString();
            }
        };
    }
    
    public Converter<Long, Reserva> ApplicationConversionServiceFactoryBean.getIdToReservaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Reserva>() {
            public es.uca.iw.hoteloasis.domain.Reserva convert(java.lang.Long id) {
                return Reserva.findReserva(id);
            }
        };
    }
    
    public Converter<String, Reserva> ApplicationConversionServiceFactoryBean.getStringToReservaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Reserva>() {
            public es.uca.iw.hoteloasis.domain.Reserva convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Reserva.class);
            }
        };
    }
    
    public Converter<Rol, String> ApplicationConversionServiceFactoryBean.getRolToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Rol, java.lang.String>() {
            public String convert(Rol rol) {
                return new StringBuilder().append(rol.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Rol> ApplicationConversionServiceFactoryBean.getIdToRolConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Rol>() {
            public es.uca.iw.hoteloasis.domain.Rol convert(java.lang.Long id) {
                return Rol.findRol(id);
            }
        };
    }
    
    public Converter<String, Rol> ApplicationConversionServiceFactoryBean.getStringToRolConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Rol>() {
            public es.uca.iw.hoteloasis.domain.Rol convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Rol.class);
            }
        };
    }
    
    public Converter<Tarifa, String> ApplicationConversionServiceFactoryBean.getTarifaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Tarifa, java.lang.String>() {
            public String convert(Tarifa tarifa) {
                return new StringBuilder().append(tarifa.getLlamada_nacional()).append(' ').append(tarifa.getLlamada_internacional()).append(' ').append(tarifa.getInternet()).append(' ').append(tarifa.getCancel_mas_cinco_dias()).toString();
            }
        };
    }
    
    public Converter<Long, Tarifa> ApplicationConversionServiceFactoryBean.getIdToTarifaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Tarifa>() {
            public es.uca.iw.hoteloasis.domain.Tarifa convert(java.lang.Long id) {
                return Tarifa.findTarifa(id);
            }
        };
    }
    
    public Converter<String, Tarifa> ApplicationConversionServiceFactoryBean.getStringToTarifaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Tarifa>() {
            public es.uca.iw.hoteloasis.domain.Tarifa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tarifa.class);
            }
        };
    }
    
    public Converter<Usuario, String> ApplicationConversionServiceFactoryBean.getUsuarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.hoteloasis.domain.Usuario, java.lang.String>() {
            public String convert(Usuario usuario) {
                return new StringBuilder().append(usuario.getNombre()).append(' ').append(usuario.getPrimer_apellido()).append(' ').append(usuario.getSegundo_apellido()).append(' ').append(usuario.getNombre_usuario()).toString();
            }
        };
    }
    
    public Converter<Long, Usuario> ApplicationConversionServiceFactoryBean.getIdToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.hoteloasis.domain.Usuario>() {
            public es.uca.iw.hoteloasis.domain.Usuario convert(java.lang.Long id) {
                return Usuario.findUsuario(id);
            }
        };
    }
    
    public Converter<String, Usuario> ApplicationConversionServiceFactoryBean.getStringToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.hoteloasis.domain.Usuario>() {
            public es.uca.iw.hoteloasis.domain.Usuario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Usuario.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBebidaToStringConverter());
        registry.addConverter(getIdToBebidaConverter());
        registry.addConverter(getStringToBebidaConverter());
        registry.addConverter(getBebida_consumoToStringConverter());
        registry.addConverter(getIdToBebida_consumoConverter());
        registry.addConverter(getStringToBebida_consumoConverter());
        registry.addConverter(getCategoriaToStringConverter());
        registry.addConverter(getIdToCategoriaConverter());
        registry.addConverter(getStringToCategoriaConverter());
        registry.addConverter(getEstanciaToStringConverter());
        registry.addConverter(getIdToEstanciaConverter());
        registry.addConverter(getStringToEstanciaConverter());
        registry.addConverter(getHabitacionToStringConverter());
        registry.addConverter(getIdToHabitacionConverter());
        registry.addConverter(getStringToHabitacionConverter());
        registry.addConverter(getHotelToStringConverter());
        registry.addConverter(getIdToHotelConverter());
        registry.addConverter(getStringToHotelConverter());
        registry.addConverter(getLlamadaToStringConverter());
        registry.addConverter(getIdToLlamadaConverter());
        registry.addConverter(getStringToLlamadaConverter());
        registry.addConverter(getMinibarToStringConverter());
        registry.addConverter(getIdToMinibarConverter());
        registry.addConverter(getStringToMinibarConverter());
        registry.addConverter(getMinibar_bebidaToStringConverter());
        registry.addConverter(getIdToMinibar_bebidaConverter());
        registry.addConverter(getStringToMinibar_bebidaConverter());
        registry.addConverter(getReservaToStringConverter());
        registry.addConverter(getIdToReservaConverter());
        registry.addConverter(getStringToReservaConverter());
        registry.addConverter(getRolToStringConverter());
        registry.addConverter(getIdToRolConverter());
        registry.addConverter(getStringToRolConverter());
        registry.addConverter(getTarifaToStringConverter());
        registry.addConverter(getIdToTarifaConverter());
        registry.addConverter(getStringToTarifaConverter());
        registry.addConverter(getUsuarioToStringConverter());
        registry.addConverter(getIdToUsuarioConverter());
        registry.addConverter(getStringToUsuarioConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
