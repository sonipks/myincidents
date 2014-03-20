// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pks.myincidents.domain;

import com.pks.myincidents.domain.Incident;
import com.pks.myincidents.domain.IncidentDataOnDemand;
import com.pks.myincidents.domain.IncidentType;
import com.pks.myincidents.domain.IssueType;
import com.pks.myincidents.domain.StatusType;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect IncidentDataOnDemand_Roo_DataOnDemand {
    
    declare @type: IncidentDataOnDemand: @Component;
    
    private Random IncidentDataOnDemand.rnd = new SecureRandom();
    
    private List<Incident> IncidentDataOnDemand.data;
    
    public Incident IncidentDataOnDemand.getNewTransientIncident(int index) {
        Incident obj = new Incident();
        setApplicationName(obj, index);
        setAssignedDate(obj, index);
        setComments(obj, index);
        setDescription(obj, index);
        setIncidentNo(obj, index);
        setIssueType(obj, index);
        setOpenedDate(obj, index);
        setOwner(obj, index);
        setPriority(obj, index);
        setResolutionDetails(obj, index);
        setResolutionType(obj, index);
        setResolvedDate(obj, index);
        setSeverity(obj, index);
        setStatus(obj, index);
        setType(obj, index);
        return obj;
    }
    
    public void IncidentDataOnDemand.setApplicationName(Incident obj, int index) {
        String applicationName = "applicationName_" + index;
        obj.setApplicationName(applicationName);
    }
    
    public void IncidentDataOnDemand.setAssignedDate(Incident obj, int index) {
        Date assignedDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setAssignedDate(assignedDate);
    }
    
    public void IncidentDataOnDemand.setComments(Incident obj, int index) {
        String comments = "comments_" + index;
        obj.setComments(comments);
    }
    
    public void IncidentDataOnDemand.setDescription(Incident obj, int index) {
        String Description = "Description_" + index;
        obj.setDescription(Description);
    }
    
    public void IncidentDataOnDemand.setIncidentNo(Incident obj, int index) {
        Integer incidentNo = new Integer(index);
        obj.setIncidentNo(incidentNo);
    }
    
    public void IncidentDataOnDemand.setIssueType(Incident obj, int index) {
        IssueType issueType = IssueType.class.getEnumConstants()[0];
        obj.setIssueType(issueType);
    }
    
    public void IncidentDataOnDemand.setOpenedDate(Incident obj, int index) {
        Date openedDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setOpenedDate(openedDate);
    }
    
    public void IncidentDataOnDemand.setOwner(Incident obj, int index) {
        String owner = "owner_" + index;
        obj.setOwner(owner);
    }
    
    public void IncidentDataOnDemand.setPriority(Incident obj, int index) {
        Integer Priority = new Integer(index);
        obj.setPriority(Priority);
    }
    
    public void IncidentDataOnDemand.setResolutionDetails(Incident obj, int index) {
        String resolutionDetails = "resolutionDetails_" + index;
        obj.setResolutionDetails(resolutionDetails);
    }
    
    public void IncidentDataOnDemand.setResolutionType(Incident obj, int index) {
        String resolutionType = "resolutionType_" + index;
        obj.setResolutionType(resolutionType);
    }
    
    public void IncidentDataOnDemand.setResolvedDate(Incident obj, int index) {
        Date resolvedDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setResolvedDate(resolvedDate);
    }
    
    public void IncidentDataOnDemand.setSeverity(Incident obj, int index) {
        Integer Severity = new Integer(index);
        obj.setSeverity(Severity);
    }
    
    public void IncidentDataOnDemand.setStatus(Incident obj, int index) {
        StatusType status = StatusType.class.getEnumConstants()[0];
        obj.setStatus(status);
    }
    
    public void IncidentDataOnDemand.setType(Incident obj, int index) {
        IncidentType type = IncidentType.class.getEnumConstants()[0];
        obj.setType(type);
    }
    
    public Incident IncidentDataOnDemand.getSpecificIncident(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Incident obj = data.get(index);
        Long id = obj.getId();
        return Incident.findIncident(id);
    }
    
    public Incident IncidentDataOnDemand.getRandomIncident() {
        init();
        Incident obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Incident.findIncident(id);
    }
    
    public boolean IncidentDataOnDemand.modifyIncident(Incident obj) {
        return false;
    }
    
    public void IncidentDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Incident.findIncidentEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Incident' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Incident>();
        for (int i = 0; i < 10; i++) {
            Incident obj = getNewTransientIncident(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
