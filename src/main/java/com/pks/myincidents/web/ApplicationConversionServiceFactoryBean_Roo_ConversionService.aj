// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pks.myincidents.web;

import com.pks.myincidents.domain.Incident;
import com.pks.myincidents.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Incident, String> ApplicationConversionServiceFactoryBean.getIncidentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pks.myincidents.domain.Incident, java.lang.String>() {
            public String convert(Incident incident) {
                return new StringBuilder().append(incident.getPriority()).append(' ').append(incident.getSeverity()).append(' ').append(incident.getDescription()).append(' ').append(incident.getOpenedDate()).toString();
            }
        };
    }
    
    public Converter<Long, Incident> ApplicationConversionServiceFactoryBean.getIdToIncidentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.pks.myincidents.domain.Incident>() {
            public com.pks.myincidents.domain.Incident convert(java.lang.Long id) {
                return Incident.findIncident(id);
            }
        };
    }
    
    public Converter<String, Incident> ApplicationConversionServiceFactoryBean.getStringToIncidentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pks.myincidents.domain.Incident>() {
            public com.pks.myincidents.domain.Incident convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Incident.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getIncidentToStringConverter());
        registry.addConverter(getIdToIncidentConverter());
        registry.addConverter(getStringToIncidentConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
