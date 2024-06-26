package member;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.SecurityUtil;

public class MemberJoinOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/member");
		int maxSize = 1024 * 1024 * 5;
		String encoding = "UTF-8";
		
		MultipartRequest mutilMultipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String mid = mutilMultipartRequest.getParameter("mid")==null? "" : mutilMultipartRequest.getParameter("mid");
		String pwd = mutilMultipartRequest.getParameter("pwd")==null? "" : mutilMultipartRequest.getParameter("pwd");
		String nickName = mutilMultipartRequest.getParameter("nickName")==null? "" : mutilMultipartRequest.getParameter("nickName");
		String name = mutilMultipartRequest.getParameter("name")==null? "" : mutilMultipartRequest.getParameter("name");
		String gender = mutilMultipartRequest.getParameter("gender")==null? "" : mutilMultipartRequest.getParameter("gender");
		String birthday = mutilMultipartRequest.getParameter("birthday")==null? "" : mutilMultipartRequest.getParameter("birthday");
		String tel = mutilMultipartRequest.getParameter("tel")==null? "" : mutilMultipartRequest.getParameter("tel");
		String address = mutilMultipartRequest.getParameter("address")==null? "" : mutilMultipartRequest.getParameter("address");
		String email = mutilMultipartRequest.getParameter("email")==null? "" : mutilMultipartRequest.getParameter("email");
		String homePage = mutilMultipartRequest.getParameter("homePage")==null? "" : mutilMultipartRequest.getParameter("homePage");
		String job = mutilMultipartRequest.getParameter("job")==null? "" : mutilMultipartRequest.getParameter("job");
		//String hobby = request.getParameter("hobby")==null? "" : request.getParameter("hobby");
		String photo = mutilMultipartRequest.getFilesystemName("fName")==null? "noimage.jpg" : mutilMultipartRequest.getFilesystemName("fName");
		// 사진은 null이 아닐 경우에는 fileSystemName으로 저장해야함
		System.out.println("photo" + photo);
		String content = mutilMultipartRequest.getParameter("content")==null? "" : mutilMultipartRequest.getParameter("content");
		String userInfor = mutilMultipartRequest.getParameter("userInfor")==null? "" : mutilMultipartRequest.getParameter("userInfor");
		
		String[] hobbys = mutilMultipartRequest.getParameterValues("hobby");
		String hobby = "";
		if(hobbys.length != 0) {
			for(String h : hobbys) {
				hobby += h + "/";
			}
		}
		hobby = hobby.substring(0, hobby.lastIndexOf("/"));
		
		// DB에 저장시킨자료중 not null 데이터는 Back End 체크시켜준다.
		
		// 아이디/닉네임 중복체크....
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getMemberIdCheck(mid);
		if(vo.getMid() != null) {
			request.setAttribute("message", "이미 사용중인 아이디 입니다.");
			request.setAttribute("url", "MemberJoin.mem");
			return;
		}
		
		vo = dao.getMemberNickCheck(nickName);
		if(vo.getNickName() != null) {
			request.setAttribute("msg", "이미 사용중인 닉네임 입니다.");
			request.setAttribute("url", "MemberJoin.mem");
			return;
		}
		
		
		// 비밀번호 암호화(sha256) - salt키를 만든후 암호화 시켜준다.(uuid코드중 앞자리 8자리 같이 병행처리후 암호화시킨다.)
		// uuid를 통한 salt키 만들기(앞에서 8자리를 가져왔다.)
		String salt = UUID.randomUUID().toString().substring(0,8);
		
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(salt + pwd);
		
		pwd = salt + pwd;
		
		// 모든 체크가 끝난 자료는 vo에 담아서 DB에 저장처리한다.
		vo = new MemberVO();
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setNickName(nickName);
		vo.setName(name);
		vo.setGender(gender);
		vo.setBirthday(birthday);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setEmail(email);
		vo.setHomePage(homePage);
		vo.setJob(job);
		vo.setHobby(hobby);
		vo.setPhoto(photo);
		vo.setContent(content);
		vo.setUserInfor(userInfor);
		
		int res = dao.setMemberJoinOk(vo);
		
		if(res != 0) {
			request.setAttribute("message", "회원 가입되셨습니다.\\n다시 로그인해 주세요.");
			request.setAttribute("url", "MemberLogin.mem");
		}
		else {
			request.setAttribute("message", "회원 가입 실패~~");
			request.setAttribute("url", "MemberJoin.mem");
		}
	}
}
