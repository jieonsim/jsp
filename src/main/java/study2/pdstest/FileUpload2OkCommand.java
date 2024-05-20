package study2.pdstest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import study2.StudyInterface;

public class FileUpload2OkCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/pdstest");
		int maxSize = 1024 * 1024 * 10;
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String originalFileName1 = multipartRequest.getOriginalFileName("fName1");
		String originalFileName2 = multipartRequest.getOriginalFileName("fName2");
		String originalFileName3 = multipartRequest.getOriginalFileName("fName3");
		
		String fileSystemName1 = multipartRequest.getFilesystemName("fName1");
		String fileSystemName2 = multipartRequest.getFilesystemName("fName2");
		String fileSystemName3 = multipartRequest.getFilesystemName("fName3");
		
		System.out.println("원본 파일명1 : " + originalFileName1);
		System.out.println("원본 파일명2 : " + originalFileName2);
		System.out.println("원본 파일명3 : " + originalFileName3);
		
		System.out.println("서버에 저장된 파일명1 : " + fileSystemName1);
		System.out.println("서버에 저장된 파일명2 : " + fileSystemName2);
		System.out.println("서버에 저장된 파일명3 : " + fileSystemName3);
		
		
		if(originalFileName1 != null && !originalFileName1.equals("")) {
			request.setAttribute("message", "파일이 업로드되었습니다.");
		} else {
			request.setAttribute("message", "파일 업로드에 실패하였습니다.");
		}
		request.setAttribute("url", "FileUpload2.st");
	}
}
