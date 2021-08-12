package com.phucdn.shop.model;

import java.io.Serializable;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryDTO implements Serializable{
	private Long categoryId;
	@NotEmpty
	@Min(value = 5)
	private String name;
	
	private Boolean isEdit = false;
}
