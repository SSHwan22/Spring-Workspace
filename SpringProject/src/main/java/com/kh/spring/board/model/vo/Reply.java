package com.kh.spring.board.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {

	private int replyNo;
	private String replyContent;
	private int refBno;
	private String replyWriter;
	private int userNo;
	private Date createDate;
	private String status;
}
