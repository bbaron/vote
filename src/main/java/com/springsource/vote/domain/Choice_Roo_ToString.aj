// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.vote.domain;

import java.lang.String;

privileged aspect Choice_Roo_ToString {
    
    public String Choice.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("NamingChoice: ").append(getNamingChoice()).append(", ");
        sb.append("Description: ").append(getDescription());
        return sb.toString();
    }
    
}
