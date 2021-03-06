package com.uib.library.userDetails;

import com.uib.library.userDetails.*;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;

import com.uib.library.domain.User;

public class SecUser implements UserDetails {		

	private static final long serialVersionUID = 3937359298395325063L;
	
	private User libUsr;
	private Collection<GrantedAuthority> authorities;
	
	public SecUser(User user) {
		super();
		this.libUsr = user;
		authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new GrantedAuthorityImpl(libUsr.getLibRole().getRoleNm()));	
	}

	@Override
	public Collection<GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		//for MD5 password change to libUsr.getMd5Pswd()
		//return libUsr.getPswd();	
		return libUsr.getMd5Pswd();
	}

	@Override
	public String getUsername() {
		return libUsr.getUsrnm();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
