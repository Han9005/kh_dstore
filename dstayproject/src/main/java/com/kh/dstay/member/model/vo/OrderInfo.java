package com.kh.dstay.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OrderInfo {
	
	private int orderNo;
	private int productNo;
	private int memberNo;
	private int payNo;
	private String productName;
	private int amount;
	private int price;
	private Date date;
	private String request;
	private String status;
	private int post;
	private String address1;
	private String address2;
	private String waybillNo;
	private String piPath;
	private int calories;
}
