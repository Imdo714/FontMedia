package com.matcha.mvc.template.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.matcha.mvc.common.vo.PageInfo;
import com.matcha.mvc.template.vo.Template;
import com.matcha.mvc.template.vo.TemplateImg;

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
	
	
	
}
