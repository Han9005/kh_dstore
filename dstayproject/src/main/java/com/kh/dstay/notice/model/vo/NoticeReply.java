package com.kh.dstay.notice.model.vo;

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
public class NoticeReply {
	
	private int replyNo;					// 댓글 번호
	private int refNoticeId;				// 댓글이 참조하는 공지사항 번호
	private int replyWriter;				// 작성자 mno
	private String replyWriterNickName;		// 작성자 닉네임
	private String replyContents;			// 댓글 내용
	private Date replyCreateDate;			// 댓글 작성일(시간)
	private Date replyModifyDate;			// 댓글 수정일(시간)
	private String replyStatus;				// 댓글 상태(살아있느냐 죽었느냐)
	private int replyDepth;					// 댓글 깊이(대댓글 구현)
	private int replyParent;				// 댓글 부모(대댓글 구현)
	private int replyReorder;				// 댓글 재조정?(대댓글 구현)
}
