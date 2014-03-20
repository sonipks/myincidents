package com.pks.myincidents.web;
import com.pks.myincidents.domain.Incident;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/incidents")
@Controller
@RooWebScaffold(path = "incidents", formBackingObject = Incident.class)
public class IncidentController {
}
