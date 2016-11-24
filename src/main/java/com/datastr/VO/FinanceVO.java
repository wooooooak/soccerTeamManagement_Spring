package com.datastr.VO;

import java.math.BigInteger;

public class FinanceVO {

	private String name;
	private BigInteger value;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public BigInteger getValue() {
		return value;
	}
	public void setValue(BigInteger value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "FinanceVO [name=" + name + ", value=" + value + "]";
	}
}
