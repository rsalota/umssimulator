// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.real.umssimulator;

import com.real.umssimulator.CancelRequest;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CancelRequest_Roo_Json {
    
    public String CancelRequest.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static CancelRequest CancelRequest.fromJsonToCancelRequest(String json) {
        return new JSONDeserializer<CancelRequest>().use(null, CancelRequest.class).deserialize(json);
    }
    
    public static String CancelRequest.toJsonArray(Collection<CancelRequest> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<CancelRequest> CancelRequest.fromJsonArrayToCancelRequests(String json) {
        return new JSONDeserializer<List<CancelRequest>>().use(null, ArrayList.class).use("values", CancelRequest.class).deserialize(json);
    }
    
}
