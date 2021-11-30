package com.velog.web.model.dto;

import com.velog.domain.user.Mypage;

import lombok.Data;

@Data
public class MypageDto {
	
     private String name;
     private String comment;
     private String nickname;
     
     public Mypage toEntity(int id) {
    	 return Mypage.builder()
    			 .id(id)
    			 .name(name)
    			 .comment(comment)
    			 .nickname(nickname)    			 
    			 .build();
     }
}
