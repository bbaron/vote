// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.vote.domain;

import java.lang.String;

privileged aspect Vote_Roo_ToString {
    
    public String Vote.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Choice: ").append(getChoice()).append(", ");
        sb.append("Ip: ").append(getIp()).append(", ");
        sb.append("Registered: ").append(getRegistered());
        return sb.toString();
    }
    
}
