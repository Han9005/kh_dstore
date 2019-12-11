package com.kh.dstay.lee.perchase.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class ShoppingCart implements Serializable{

	private static final long serialVersionUID = 1934923432215186136L;
	
	private int cno;
	private int pno;
	private int mno;
	private int ccount;
	private int cpricesum;
	private String cimpath;
	private String pname;
	private String pcname;
	private String pdprice;
	private Date cdate;
	private String cstatus;
	
	
}
