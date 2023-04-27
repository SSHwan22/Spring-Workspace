package com.kh.spring.member.model.service;

import org.springframework.stereotype.Service;

@Service // 현재 클래스가 Service임을 명시 + bean으로 등록
public class MemberServiceImpl implements MemberService{

	// @Autowired // 순환 의존문제 발생 (서로가 서로를 주입받고 있음)
	// private MemberController memberController;
}
