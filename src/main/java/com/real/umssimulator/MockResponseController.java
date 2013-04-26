package com.real.umssimulator;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mockresponses")
@Controller
@RooWebScaffold(path = "mockresponses", formBackingObject = MockResponse.class)
public class MockResponseController {
}
