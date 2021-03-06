package com.uib.library.domain.base;
// Generated Jun 26, 2013 10:09:32 AM by Hibernate Tools 3.3.0.GA


import com.uib.library.domain.base.*;
import com.uib.library.domain.User;
import java.util.HashSet;
import java.util.Set;

/**
 * RoleBase generated by hbm2java
 */
public class RoleBase  implements java.io.Serializable {


     /**
	 * 
	 */
	private static final long serialVersionUID = -812853511209529197L;
	private Integer roleId;
     private String roleNm;
     private Set<User> users = new HashSet<User>(0);

    public RoleBase() {
    }

	
    public RoleBase(String roleNm) {
        this.roleNm = roleNm;
    }
    public RoleBase(String roleNm, Set<User> libUsrs) {
       this.roleNm = roleNm;
       this.users = libUsrs;
    }
   
    public Integer getRoleId() {
        return this.roleId;
    }
    
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
    public String getRoleNm() {
        return this.roleNm;
    }
    
    public void setRoleNm(String roleNm) {
        this.roleNm = roleNm;
    }
    public Set<User> getUsers() {
        return this.users;
    }
    
    public void setUsers(Set<User> users) {
        this.users = users;
    }




}


