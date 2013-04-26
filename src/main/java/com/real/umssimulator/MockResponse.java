package com.real.umssimulator;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findMockResponsesByGuidEquals" })
public class MockResponse {

    @NotNull
    private String guid;

    @NotNull
    private Integer responseCode;
}
