package com.real.umssimulator;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = CancelRequest.class)
@Controller
@RequestMapping("/cancelrequests")
public class CancelRequestController {
}
