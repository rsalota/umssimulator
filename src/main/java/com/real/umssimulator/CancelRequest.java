package com.real.umssimulator;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.json.RooJson;

@RooJson
@RooJavaBean
class CancelRequest {
	private String reason;
}
