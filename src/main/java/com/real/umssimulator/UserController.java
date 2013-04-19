package com.real.umssimulator;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/users")
@Controller
@RooWebScaffold(path = "users", formBackingObject = User.class)
@RooWebJson(jsonObject = User.class)
public class UserController {
	
	@RequestMapping("/{guid}")
	public @ResponseBody ResponseEntity<String> findByGuid(@PathVariable("guid") String guid){
		User u = User.findUsersByGuidEquals(guid).getSingleResult();
		return new ResponseEntity<String>(u.toJson(),HttpStatus.OK);
	}
}
