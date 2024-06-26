package com.matcha.mvc.template.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.matcha.mvc.common.vo.PageInfo;
import com.matcha.mvc.template.vo.Template;
import com.matcha.mvc.template.vo.TemplateImg;
import com.matcha.mvc.template.vo.TemplateReply;

@Repository
public class templateDao {

	// 템플릿 올리기
	public int templateInsert(SqlSessionTemplate sqlSession, Template t, int userNo) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userNo", userNo);
		params.put("t", t);
		
		return sqlSession.insert("TemplateMapper.templateInsert", params);
	}
	
	// 템플릿 썸네일 올리기
	public int templateTitleImg(SqlSessionTemplate sqlSession, TemplateImg ti) {
		return sqlSession.insert("TemplateMapper.templateTitleImg", ti);
	}
	
	// 템플릿 리스트 총 갯수 
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("TemplateMapper.selectListCount");
	}
	
	// 템플릿 리스트 정보 가져오기 
	public ArrayList<Template> selectTemplateList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("TemplateMapper.selectTemplateList", null, rowBounds);
	}
	
	// 디테일 템플릿 정보
	public ArrayList<Template> detailTemplate(SqlSessionTemplate sqlSession, int tno) {
		return (ArrayList)sqlSession.selectList("TemplateMapper.detailTemplate", tno);
	}
	
	// 템플릿 댓글 총 갯수
	public int selectReplyCount(SqlSessionTemplate sqlSession, int tno) {
		return sqlSession.selectOne("TemplateMapper.selectReplyCount", tno);
	}
	
	// 템플릿 댓글 가져오기 
	public ArrayList<TemplateReply> detailReplyTemplate(SqlSessionTemplate sqlSession, PageInfo pi, int tno) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("TemplateMapper.detailReplyTemplate", tno, rowBounds);
	}
	
	// 템플릿 수정 업데이트 
	public int updateTemplate(SqlSessionTemplate sqlSession, Template t) {
		return sqlSession.update("TemplateMapper.updateTemplate", t);
	}
	
	// 템플릿 수정 업데이트 
	public int replyInsert(SqlSessionTemplate sqlSession, TemplateReply r, int userNo) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userNo", userNo);
		params.put("r", r);
		
		return sqlSession.insert("TemplateMapper.replyInsert", params);
	}
	
	// 댓글 삭제
	public int replyDelt(SqlSessionTemplate sqlSession, int templateReplyNo) {
		return sqlSession.delete("TemplateMapper.replyDelt", templateReplyNo);
	}
	
	// 댓글 수정
	public int replyUpdate(SqlSessionTemplate sqlSession, TemplateReply tr) {
		return sqlSession.update("TemplateMapper.replyUpdate", tr);
	}
	
	// 마에피이지 템플릿
	public ArrayList<Template> selectUserTemplate(SqlSessionTemplate sqlSession, int userNo) {
		return (ArrayList)sqlSession.selectList("TemplateMapper.selectUserTemplate", userNo);
	}
	
	// 마에피이지 템플릿
	public ArrayList<TemplateImg> TemplateImgAll(SqlSessionTemplate sqlSession, int templateNo) {
		return (ArrayList)sqlSession.selectList("TemplateMapper.TemplateImgAll", templateNo);
	}
	
	// 댓글 삭제
	public int templateAllDelte(SqlSessionTemplate sqlSession, int templateNo) {
		int res1 = sqlSession.delete("TemplateMapper.templateDelte", templateNo);
		int res2 = sqlSession.delete("TemplateMapper.templateImgDelte", templateNo);
		int res3 = sqlSession.delete("TemplateMapper.templateReplyDelte", templateNo);
		
		return res1 + res2 +res3;
	}
	
	// 썸머 노트 사진 이름 저장하기 
	public int summerImgName(SqlSessionTemplate sqlSession, TemplateImg sti) {
		return sqlSession.update("TemplateMapper.summerImgName", sti);
	}
	
	// 회원 템플릿 총 갯수 
	public int userTemplateCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("TemplateMapper.userTemplateCount", userNo);
	}
	
	// 회원 댓글 총 갯수 
	public int userReplyCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("TemplateMapper.userReplyCount", userNo);
	}
}
