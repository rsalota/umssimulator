package com.real.umssimulator;

import javax.persistence.TypedQuery;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/users/**/services")
@Controller
public class ServiceController {
	private static Logger log = Logger.getLogger(ServiceController.class);
	
	@RequestMapping("/{tid}")
	public ResponseEntity<String> findUserByTransactionId(
			@PathVariable("tid") String tid) {
		log.info("calling find user by transaction id " + tid);
		TypedQuery<User> tu = User.findUsersByTransaction_idEquals(tid);
		switch (tu.getResultList().size()) {
		case 0:
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		case 1:
			log.info("Found  for " + tid + " " + tu.getSingleResult().toJson());
			return new ResponseEntity<String>(tu.getSingleResult().toJson(),
					HttpStatus.OK);
		default:
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@RequestMapping(value = "/{tid}", method = RequestMethod.PUT, headers = "Accept=application/json")
	public ResponseEntity<String> cancelService(
			@PathVariable("tid") String tid, @RequestBody String cr) {
		log.info("calling cancel" + tid + "  " + cr);
		TypedQuery<User> tu = User.findUsersByTransaction_idEquals(tid);
		switch (tu.getResultList().size()) {
		case 0:
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		case 1:
			User u = tu.getSingleResult();
			log.info("calling find user by transaction id  and cr" + tid + "  " + u.toJson());
			CancelRequest c = CancelRequest.fromJsonToCancelRequest(cr);
			u.setReason(c.getReason());
			u.persist();
			return new ResponseEntity<String>(HttpStatus.OK);
		default:
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@RequestMapping(method = RequestMethod.PUT, headers = "Accept=application/json")
	public ResponseEntity<String> newService(@RequestBody String userJson) {
		log.info("Request for new " + userJson);
		if (StringUtils.isEmpty(userJson)) {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		User u = User.fromJsonToUser(userJson);
		if (u == null || u.getTransaction_id() == null) {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		TypedQuery<User> tu = User.findUsersByTransaction_idEquals(u
				.getTransaction_id());
		switch (tu.getResultList().size()) {
		case 0:
			u.persist();
			return new ResponseEntity<String>(HttpStatus.CREATED);
		case 1:
			return new ResponseEntity<String>(HttpStatus.CREATED);
		default:
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
