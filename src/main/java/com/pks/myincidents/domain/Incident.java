package com.pks.myincidents.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "ASO_INCIDENT")
public class Incident {

    /**
     */
    @Enumerated
    private IncidentType type;

    /**
     */
    private Integer Priority;

    /**
     */
    private Integer Severity;

    /**
     */
    private String Description;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date openedDate;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date assignedDate;

    /**
     */
    private String owner;

    /**
     */
    @Enumerated
    private StatusType status;

    /**
     */
    private String applicationName;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date resolvedDate;

    /**
     */
    private String comments;

    /**
     */
    private String resolutionType;

    /**
     */
    private String resolutionDetails;

    /**
     */
    @Enumerated
    private IssueType issueType;

    /**
     */
    @Column(unique = true)
    private Integer incidentNo;
}
