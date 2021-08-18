package com.phucdn.shop.model;

import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountDTO {
	@NotEmpty
	@Length(min = 8)
	private String username;
	@NotEmpty
	@Length(min = 8)
	private String password;
	
	private Boolean isEdit = false;
}
