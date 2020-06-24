package com.kh.finalpj.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/member/login.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/member/memberjoin.do")
	public String memberJoin() {
		return "member/memberJoin";
	}
	
	@RequestMapping("/member/infoconsent.do")
	public ModelAndView infoConsent(ModelAndView mav,@RequestParam Map<String, Object> commandMap) {
		
		System.out.println(commandMap.get("f_phone"));
		mav.addObject("member",commandMap);
		mav.setViewName("member/personalInformationConsent");
		
		return mav;
	}
	
	@RequestMapping("/member/sendemail.do")
	public ModelAndView sendEmail(ModelAndView mav,@RequestParam Map<String, Object> commandMap) {
		
		String email = (String) commandMap.get("f_email");
		
		String[] str = email.split("@");
		 
		mav.addObject("member",commandMap);
		mav.addObject("mail",str[1]);
		mav.setViewName("member/sendEmail");
		return mav;
	}
	
	@RequestMapping("/member/findemail.do")
	public String findEmail() {
		return "member/findEmail";
	}
	
	@RequestMapping("/member/findpassword.do")
	public String findPassword() {
		return "member/findPassword";
	}
	
	@RequestMapping("/member/infomodify.do")
	public String infoModify() {
		return "member/infoModify";
	}
	
	@RequestMapping("/member/leavemember.do")
	public String leaveMember() {
		return "member/leaveMember";
	}
	
	
	@RequestMapping("/member/loginCheck.do")
	public ModelAndView loginCheck(ModelAndView mav,HttpSession session,HttpServletRequest request,@RequestParam Map<String,Object> commanMap) {
	
		Map<String, Object> member =  null;
		
		member = memberService.selectLoginMember(commanMap);
		
		if(member != null) {
			session.setAttribute("loginUser", member);
			mav.addObject("alertMsg",member.get("F_NAME")+"님 환영합니다.");
			mav.addObject("url", request.getContextPath()+"/index/index.do");
			mav.setViewName("common/result");
		}else{
			mav.addObject("alertMsg","이메일,비밀번호를 확인하세요!");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
		
		
		return mav;
	}
	
	@RequestMapping("/member/kakaoreg.do")
	public ModelAndView kakaoReg(ModelAndView mav,@RequestParam Map<String,Object> commanMap) {
		
		mav.addObject("KaKaoInfo",commanMap);
		mav.setViewName("member/memberJoin_K");
	
		return mav;
	}
	
	@RequestMapping("/member/kakaologin.do")
	public ModelAndView kakaoLogin(ModelAndView mav,HttpSession session,HttpServletRequest request,@RequestParam Map<String,Object> commanMap) {
		
		Map<String, Object> kakaoLoginMember = memberService.selectKaKaoLoginMember(commanMap);
		
		if(kakaoLoginMember != null) {
			session.setAttribute("loginUser", kakaoLoginMember);
			mav.addObject("alertMsg",kakaoLoginMember.get("F_NAME")+"님 환영합니다.");
			mav.addObject("url", request.getContextPath()+"/index/index.do");
			mav.setViewName("common/result");
		}else{
			mav.addObject("alertMsg","이메일,비밀번호를 확인하세요!");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
	
		return mav;
	}
	
	
	
	@RequestMapping("/member/idcheck.do")
	public void idCheck(HttpServletResponse response,String f_email) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		int result = memberService.idCheck(f_email);
		
		if(result > 0) {
			out.print("no");
		}else {
			out.print("ok");
		}
	}
	
	@RequestMapping("/member/findinfoauthentication.do")
	public void findEmailAuthentication(HttpServletResponse response,
			@RequestParam Map<String,Object> commandMap) throws IOException {
			
			String urlType = (String)commandMap.get("f_type");
			
		    PrintWriter out = response.getWriter();
		    System.out.println(commandMap.get("f_email"));

	                String host = "smtp.gmail.com";
	                String user = "korisnaCustomerContact@gmail.com"; //자신의 계정
	                String password = "qwer1234!!";//자신의 패스워드

	                //SMTP 서버 정보를 설정한다.
	                Properties props = new Properties();
	                props.put("mail.smtp.host", host);
	                props.put("mail.smtp.port", 465);
	                props.put("mail.smtp.auth", "true");
	                props.put("mail.smtp.ssl.enable", "true");

	                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user,password);
	                    }
	                });

	                //email 전송
	                try {
	                    MimeMessage msg = new MimeMessage(session);
	                    msg.setFrom(new InternetAddress(user, "KORISNA 입니다."));
	                    msg.addRecipient(Message.RecipientType.TO, new InternetAddress((String)commandMap.get("f_email")));
	                   
	                    
	                    if(urlType.equals("email")) {
	                    	String userEmail= memberService.selectFindUserEmail(commandMap);
	                    	msg.setSubject("회원님의 가입 이메일주소입니다.");
	                    	msg.setText((String)commandMap.get("f_name") + " 님의 가입 이메일  ▶▶▶ " + userEmail );
	                    }else {
	                    	String userPassword = memberService.selectFindUserPassword(commandMap);
	                    	msg.setSubject("회원님의 가입 이메일 비밀번호입니다.");
	                    	msg.setText((String)commandMap.get("f_name") + " 님의 비밀번호  ▶▶▶ " + userPassword );
	                    }
	                   

	                    Transport.send(msg);
	                    System.out.println("이메일 전송");

	                }catch (Exception e) {
	                    e.printStackTrace();
	                }
	                
	    }
	
	@RequestMapping("/member/gofindemail.do")
	public void findEmailInfoCheck(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
			
		int result = memberService.selectFindEmailInfoCheck(commandMap);
		
		out.print(result);
	
	}
	
	@RequestMapping("/member/gofindpassword.do")
	public void findPasswordInfoCheck(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
			
		int result = memberService.selectFindUserPasswordInfoCheck(commandMap);
		
		out.print(result);
	
	}
	
	@RequestMapping("/member/emailauthentication.do")
	public void emailAuthentication(HttpServletResponse response,

			String f_email) throws IOException {

			String email = f_email;
		    PrintWriter out = response.getWriter();
		    System.out.println(email);

	                String host = "smtp.gmail.com";
	                String user = "korisnaCustomerContact@gmail.com"; //자신의 계정
	                String password = "qwer1234!!";//자신의 패스워드

	                //SMTP 서버 정보를 설정한다.
	                Properties props = new Properties();
	                props.put("mail.smtp.host", host);
	                props.put("mail.smtp.port", 465);
	                props.put("mail.smtp.auth", "true");
	                props.put("mail.smtp.ssl.enable", "true");

	                //인증 번호 생성기
	                StringBuffer temp =new StringBuffer();
	                Random rnd = new Random();
	                for(int i=0;i<10;i++)
	                {
	                    int rIndex = rnd.nextInt(3);
	                    switch (rIndex) {
	                    case 0:
	                        // a-z
	                        temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                        break;
	                    case 1:
	                        // A-Z
	                        temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                        break;
	                    case 2:
	                        // 0-9
	                        temp.append((rnd.nextInt(10)));
	                        break;
	                    }
	                }
	                String AuthenticationKey = temp.toString();
	                System.out.println(AuthenticationKey);

	                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user,password);
	                    }
	                });

	                //email 전송
	                try {
	                    MimeMessage msg = new MimeMessage(session);
	                    msg.setFrom(new InternetAddress(user, "KORISNA 입니다."));
	                    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

	                    //메일 제목
	                    msg.setSubject("회원님의 인증번호 메일입니다.");
	                    //메일 내용
	                    msg.setText("인증 번호 ▶▶▶"+ temp);

	                    Transport.send(msg);
	                    System.out.println("이메일 전송");

	                }catch (Exception e) {
	                    e.printStackTrace();
	                }
	               out.print(temp);
	    }
	
	@RequestMapping("/member/joincomplete.do")
	public ModelAndView insertMember(ModelAndView mav,HttpServletRequest request,@RequestParam Map<String, Object> commandMap) {
		
		int result = memberService.insertMember(commandMap);
		
		if(result > 0) {
			mav.addObject("alertMsg","회원가입성공!");
		}else {
			mav.addObject("alertMsg","회원가입실패!");
		}
		
		mav.addObject("url", request.getContextPath() +"/member/login.do");
		mav.setViewName("common/result");
		
		return mav;
	}
	
	@RequestMapping(value= "/member/personalinformationmodify.do" , method = RequestMethod.POST)
	public ModelAndView personalinformationmodify(ModelAndView mav,HttpSession session,@RequestParam Map<String,Object> commandMap
			,@RequestParam(name="file",required = false) MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException{
		//update문의 결과값 표시
		int result = 0;
		
		//로그인 세션에서 가져온 유저 이메일
		String userEmail = (String) ((Map<String, Object>) session.getAttribute("loginUser")).get("F_EMAIL");
		//DB에서 where문에 쓰일 로그인세션의 이메일주소를 서비스 다오로 넘겨줄 commandMap에 넣어줌 
		commandMap.put("f_email",userEmail);
		//유저가 프로필 사진을 바꿀껀지/기본이미지로 할껀지/안바꾸고 그대로할껀지 정해주는 타입
		String profileType = (String)commandMap.get("profileType");
		//파일이 저장될 경로
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/upload/";
		//현재 유저의 프로필사진
		String currentPicture =  (String) ((Map<String, Object>)session.getAttribute("loginUser")).get("F_USERPICTURE");
		//현재 유저 프로필사진 저장경로가 담긴 파일 객체 
		File currentProfile = new File(savePath+currentPicture);
		
		//프로필 사진을 바꿀때
		if (file.getSize() > 0 && commandMap.get("profileType").equals("userphoto")) {
			//upload 아래에 저장됨
			
			String originFileName = file.getOriginalFilename();
			HashMap<String, Object> data = new HashMap<>();

			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

			String renameFileName = sdf.format(new Date()) + "."
					+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

			savePath += renameFileName;
			
			File profile = new File(savePath);
			//rename된 프로필사진 이름을 DB에 저장한다.
			commandMap.put("f_userpicture", renameFileName);
			result = memberService.updateUserInfo(commandMap);
			
			//정상적으로 회원정보가 수정되었을때 파일을 upload 폴더에 넣어준다.
			if(result > 0) {
				file.transferTo(profile);
			}
			
		}//기본이미지로 선택했다면
		else if(profileType.equals("basicphoto")) {
			commandMap.put("f_userpicture", "basicphoto.png");
			result = memberService.updateUserInfo(commandMap);
		//프로필사진은 건들지않고 그대로 한다면	
		}else if(!profileType.equals("userphoto")){
			commandMap.put("f_userpicture", profileType);
			result = memberService.updateUserInfo(commandMap);
		}
		
		
		
		if(result > 0) {
			//이미지 파일 쌓이는거 방지
			//기본이미지 또는 프로필사진을 변경했을때  원래 프로필사진을 upload폴더에서 삭제한다.
			if(profileType.equals("userphoto") || profileType.equals("basicphoto")) {
				if(!currentPicture.equals("basicphoto.png")) {
					currentProfile.delete();
				}
			}
			//로그인 세션 갱신
			session.setAttribute("loginUser", memberService.selectLoginMember(commandMap));
			mav.addObject("alertMsg", "개인정보수정을 완료하였습니다.");
		}else {
			mav.addObject("alertMsg", "개인정보수정에 실패하였습니다.");
		}
		
		mav.addObject("url", request.getContextPath() +"/index/index.do");
		mav.setViewName("common/result");
		
		return mav;
	}
	
	
	@RequestMapping("/member/logout.do")
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginUser");
		
		return "redirect:/index/index.do";
	}
	
	@RequestMapping("/member/withdrawal.do")
	public ModelAndView withdrawal(ModelAndView mav,HttpServletRequest request,HttpSession session) {
		
		int result = memberService.updateLeaveMember((Map<String, Object>) session.getAttribute("loginUser"));
		
		if(result > 0) {
			session.removeAttribute("loginUser");
			mav.addObject("alertMsg","그 동안 이용해 주셔서 감사합니다.");
			mav.addObject("url",request.getContextPath() +"/index/index.do");
			mav.setViewName("common/result");
		}else {
			//mav.addObject("alertMsg","탈퇴에 실패하였습니다.");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		return mav;
	}
	
	@RequestMapping("/member/contact.do")
	public String contact() {
		return "member/contact";
	}
	
	@RequestMapping("/member/contactMember.do")
	public void contactMember(HttpServletResponse response,HttpSession session,
			@RequestParam Map<String,Object> commandMap) throws IOException {
		    
		
		String userEmail = String.valueOf(commandMap.get("f_email"));
		String userName = String.valueOf(commandMap.get("f_name"));
		int result = 0;
			System.out.println(userEmail);
		    PrintWriter out = response.getWriter();
		    

			/*
			 * String host = "smtp.gmail.com"; String user = "wjdkdtn222@gmail.com"; //자신의
			 * 계정 String password = "usus7672!";//자신의 패스워드
			 * 
			 * //SMTP 서버 정보를 설정한다. Properties props = new Properties();
			 * props.put("mail.smtp.host", host); props.put("mail.smtp.port", 465);
			 * props.put("mail.smtp.auth", "true"); props.put("mail.smtp.ssl.enable",
			 * "true");
			 * 
			 * Session session1 = Session.getDefaultInstance(props, new
			 * javax.mail.Authenticator() { protected PasswordAuthentication
			 * getPasswordAuthentication() { return new
			 * PasswordAuthentication(user,password); } });
			 * 
			 * //email 전송 try { MimeMessage msg = new MimeMessage(session1); msg.setFrom(new
			 * InternetAddress(userEmail, "KORISNA - [ " + userName +
			 * " 회원님 ] 이 보내신  Q&A 메세지")); msg.addRecipient(Message.RecipientType.TO, new
			 * InternetAddress("korisnacustomerassistance@gmail.com"));
			 * 
			 * 
			 * msg.setSubject("KORISNA - 제목  [ " +
			 * String.valueOf(commandMap.get("q_subject")) + " ] ");
			 * msg.setText("< 회원님이 문의한 내용 > \n\n" +
			 * String.valueOf(commandMap.get("q_content")) +
			 * "\n\n\n\n회신할 회원 이메일 : "+userEmail);
			 * 
			 * 
			 * Transport.send(msg); System.out.println("이메일 전송");
			 * 
			 * }catch (Exception e) { out.print("fail"); e.printStackTrace(); }
			 */
		    
		    
		    String from = userEmail;
			String tomail = "korisnaCustomerContact@gmail.com";
			String title = "KORISNA - 제목  [ " + String.valueOf(commandMap.get("q_subject")) + " ] ";
			String htmlBody = "<h3>< 회원님이 문의한 내용 ></h3><br><h1>" + String.valueOf(commandMap.get("q_content")) + "</h1><br><br><h2 style='color:white;width:15%;background-color:#9536FF'>회신할 회원 이메일 </h2><span><h2>" + userEmail + "</h2></span>";

			mailSender.send(new MimeMessagePreparator() {
				public void prepare(MimeMessage mimeMessage) throws MessagingException {
					MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					message.setFrom(from);
					message.setTo(tomail);
					message.setSubject(title);
					message.setText(htmlBody, true);
				}
			});
	                
	               result = memberService.insertQnA(commandMap);
	                
	               
	               if(result > 0) {
	            	   
	            	   out.print("success");
	               }else {
	            	   
	            	   out.print("fail");
	               }
	                
	                
	    }
	
	
	
}
