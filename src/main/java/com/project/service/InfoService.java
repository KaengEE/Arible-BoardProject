package com.project.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.dao.InfoDAO;
import com.project.domain.InfoVO;
import com.project.domain.LoginUser;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class InfoService {
	
	
	@Value("${path.upload}")
	private String path_upload; // C:/Java/upload 폴더
	
	@Autowired
	private InfoDAO dao;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//파일을 폴더에 저장하고 이름 리턴
	private String saveUploadFile(MultipartFile upload_file) {
		
		//현재 시간(밀리세컨드)을 이용해서 파일의 이름이 중복되지 않게 설정
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	//목록
	public List<InfoVO> getInfoList(InfoVO vo){
		return dao.getInfoList(vo);
	}
	
	//작성
	public void addInfo(InfoVO writerInfo) {
		
		MultipartFile info_file = writerInfo.getUpload_file();
		
		if(info_file.getSize() > 0) {
			String file_name = saveUploadFile(info_file);
			//실제파일을 저장후 파일이름을 content_file에 저장
			writerInfo.setInfo_file(file_name);
		}
		//글쓴이를 세션로그인에서 가져와서 추가
		writerInfo.setInfo_writer_idx(sessionUser.getUserno());
		//DB저장
		dao.addInfo(writerInfo);
	}
	
	
	//뷰페이지
	public InfoVO getInfo(int info_idx) {
		return dao.getInfo(info_idx);
	}
	
	//공지사항 수정페이지
	public void getInfoContent(InfoVO infoContent) {
		InfoVO temp = dao.getInfo(infoContent.getInfo_idx());
		//수정할 정보 가져와서 객체에 입력
		infoContent.setInfo_title(temp.getInfo_title());
		infoContent.setInfo_content(temp.getInfo_content());
		infoContent.setName(temp.getName());
		infoContent.setInfo_file(temp.getInfo_file());
		infoContent.setRegDate(temp.getRegDate());
	}
	
	//공지사항 수정
	public void modifyInfo(InfoVO modifyInfo) {
		//업로드 파일 있는지 확인
		MultipartFile upload_file = modifyInfo.getUpload_file();
		//파일이 있으면 파일 이름 넣어줌
		if(upload_file.getSize()>0) {
			String file_name = saveUploadFile(upload_file); //파일 저장
			modifyInfo.setInfo_file(file_name); //이름만 넣어줌
		}
		
		dao.modifyInfo(modifyInfo);
	}
	
	//공지사항 삭제
	public void removeInfo(int info_idx) {
		dao.removeInfo(info_idx);
	}
	
	//공지사항 최신목록
	public List<InfoVO> getInfoNewList(InfoVO newInfo){
		return dao.getInfoNewList(newInfo);
	}

}
