<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<head>
    <meta charset="utf-8">
    <style>

#chat-circle {
  position: fixed;
  bottom: 50px;
  left:50px;
  background: #5A5EB9;
  width: 80px;
  height: 80px;  
  border-radius: 50%;
  color: white;
  padding: 28px;
  cursor: pointer;
  box-shadow: 0px 3px 16px 0px rgba(0, 0, 0, 0.6), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}

.btn#my-btn {
     background: white;
    padding-top: 13px;
    padding-bottom: 12px;
    border-radius: 45px;
    padding-right: 40px;
    padding-left: 40px;
    color: #5865C3;
}
#chat-overlay {
    background: rgba(255,255,255,0.1);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    display: none;
}

.chat-current-user{
  display:none;
  background: #efefef;
  position:fixed;
  left:380px;
  bottom:50px;  
  width:200px;
  max-width: 85vw;
  max-height:100vh;
  border-radius:5px;  
/*   box-shadow: 0px 5px 35px 9px #464a92; */
  box-shadow: 0px 5px 35px 9px #ccc;
}
.chat-box {
  display:none;
  background: #efefef;
  position:fixed;
  left:30px;
  bottom:50px;  
  width:350px;
  max-width: 85vw;
  max-height:100vh;
  border-radius:5px;  
/*   box-shadow: 0px 5px 35px 9px #464a92; */
  box-shadow: 0px 5px 35px 9px #ccc;
}
.chat-box-toggle {
  float:right;
  margin-right:15px;
  cursor:pointer;
}
.chat-current-user-header{
  background: #5A5EB9;
  height:70px;
  border-top-left-radius:5px;
  border-top-right-radius:5px; 
  color:white;
  text-align:center;
  font-size:20px;
  padding-top:17px;
}
.chat-box-header {
  background: #5A5EB9;
  height:70px;
  border-top-left-radius:5px;
  border-top-right-radius:5px; 
  color:white;
  text-align:center;
  font-size:20px;
  padding-top:17px;
}
.chat-current-user-body{
  position: relative;  
  height:370px;  
  height:auto;
  border:1px solid #ccc;  
  overflow: hidden;
}
.chat-box-body {
  position: relative;  
  height:370px;  
  height:auto;
  border:1px solid #ccc;  
  overflow: hidden;
}
.chat-current-user-body:after {
  content: "";
  background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTAgOCkiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGNpcmNsZSBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIgY3g9IjE3NiIgY3k9IjEyIiByPSI0Ii8+PHBhdGggZD0iTTIwLjUuNWwyMyAxMW0tMjkgODRsLTMuNzkgMTAuMzc3TTI3LjAzNyAxMzEuNGw1Ljg5OCAyLjIwMy0zLjQ2IDUuOTQ3IDYuMDcyIDIuMzkyLTMuOTMzIDUuNzU4bTEyOC43MzMgMzUuMzdsLjY5My05LjMxNiAxMC4yOTIuMDUyLjQxNi05LjIyMiA5LjI3NC4zMzJNLjUgNDguNXM2LjEzMSA2LjQxMyA2Ljg0NyAxNC44MDVjLjcxNSA4LjM5My0yLjUyIDE0LjgwNi0yLjUyIDE0LjgwNk0xMjQuNTU1IDkwcy03LjQ0NCAwLTEzLjY3IDYuMTkyYy02LjIyNyA2LjE5Mi00LjgzOCAxMi4wMTItNC44MzggMTIuMDEybTIuMjQgNjguNjI2cy00LjAyNi05LjAyNS0xOC4xNDUtOS4wMjUtMTguMTQ1IDUuNy0xOC4xNDUgNS43IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PHBhdGggZD0iTTg1LjcxNiAzNi4xNDZsNS4yNDMtOS41MjFoMTEuMDkzbDUuNDE2IDkuNTIxLTUuNDEgOS4xODVIOTAuOTUzbC01LjIzNy05LjE4NXptNjMuOTA5IDE1LjQ3OWgxMC43NXYxMC43NWgtMTAuNzV6IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIvPjxjaXJjbGUgZmlsbD0iIzAwMCIgY3g9IjcxLjUiIGN5PSI3LjUiIHI9IjEuNSIvPjxjaXJjbGUgZmlsbD0iIzAwMCIgY3g9IjE3MC41IiBjeT0iOTUuNSIgcj0iMS41Ii8+PGNpcmNsZSBmaWxsPSIjMDAwIiBjeD0iODEuNSIgY3k9IjEzNC41IiByPSIxLjUiLz48Y2lyY2xlIGZpbGw9IiMwMDAiIGN4PSIxMy41IiBjeT0iMjMuNSIgcj0iMS41Ii8+PHBhdGggZmlsbD0iIzAwMCIgZD0iTTkzIDcxaDN2M2gtM3ptMzMgODRoM3YzaC0zem0tODUgMThoM3YzaC0zeiIvPjxwYXRoIGQ9Ik0zOS4zODQgNTEuMTIybDUuNzU4LTQuNDU0IDYuNDUzIDQuMjA1LTIuMjk0IDcuMzYzaC03Ljc5bC0yLjEyNy03LjExNHpNMTMwLjE5NSA0LjAzbDEzLjgzIDUuMDYyLTEwLjA5IDcuMDQ4LTMuNzQtMTIuMTF6bS04MyA5NWwxNC44MyA1LjQyOS0xMC44MiA3LjU1Ny00LjAxLTEyLjk4N3pNNS4yMTMgMTYxLjQ5NWwxMS4zMjggMjAuODk3TDIuMjY1IDE4MGwyLjk0OC0xOC41MDV6IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIvPjxwYXRoIGQ9Ik0xNDkuMDUgMTI3LjQ2OHMtLjUxIDIuMTgzLjk5NSAzLjM2NmMxLjU2IDEuMjI2IDguNjQyLTEuODk1IDMuOTY3LTcuNzg1LTIuMzY3LTIuNDc3LTYuNS0zLjIyNi05LjMzIDAtNS4yMDggNS45MzYgMCAxNy41MSAxMS42MSAxMy43MyAxMi40NTgtNi4yNTcgNS42MzMtMjEuNjU2LTUuMDczLTIyLjY1NC02LjYwMi0uNjA2LTE0LjA0MyAxLjc1Ni0xNi4xNTcgMTAuMjY4LTEuNzE4IDYuOTIgMS41ODQgMTcuMzg3IDEyLjQ1IDIwLjQ3NiAxMC44NjYgMy4wOSAxOS4zMzEtNC4zMSAxOS4zMzEtNC4zMSIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjEuMjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPjwvZz48L3N2Zz4=');
  opacity: 0.1;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  height:100%;
  position: absolute;
  z-index: -1; 
}
.chat-box-body:after {
  content: "";
  background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTAgOCkiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGNpcmNsZSBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIgY3g9IjE3NiIgY3k9IjEyIiByPSI0Ii8+PHBhdGggZD0iTTIwLjUuNWwyMyAxMW0tMjkgODRsLTMuNzkgMTAuMzc3TTI3LjAzNyAxMzEuNGw1Ljg5OCAyLjIwMy0zLjQ2IDUuOTQ3IDYuMDcyIDIuMzkyLTMuOTMzIDUuNzU4bTEyOC43MzMgMzUuMzdsLjY5My05LjMxNiAxMC4yOTIuMDUyLjQxNi05LjIyMiA5LjI3NC4zMzJNLjUgNDguNXM2LjEzMSA2LjQxMyA2Ljg0NyAxNC44MDVjLjcxNSA4LjM5My0yLjUyIDE0LjgwNi0yLjUyIDE0LjgwNk0xMjQuNTU1IDkwcy03LjQ0NCAwLTEzLjY3IDYuMTkyYy02LjIyNyA2LjE5Mi00LjgzOCAxMi4wMTItNC44MzggMTIuMDEybTIuMjQgNjguNjI2cy00LjAyNi05LjAyNS0xOC4xNDUtOS4wMjUtMTguMTQ1IDUuNy0xOC4xNDUgNS43IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PHBhdGggZD0iTTg1LjcxNiAzNi4xNDZsNS4yNDMtOS41MjFoMTEuMDkzbDUuNDE2IDkuNTIxLTUuNDEgOS4xODVIOTAuOTUzbC01LjIzNy05LjE4NXptNjMuOTA5IDE1LjQ3OWgxMC43NXYxMC43NWgtMTAuNzV6IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIvPjxjaXJjbGUgZmlsbD0iIzAwMCIgY3g9IjcxLjUiIGN5PSI3LjUiIHI9IjEuNSIvPjxjaXJjbGUgZmlsbD0iIzAwMCIgY3g9IjE3MC41IiBjeT0iOTUuNSIgcj0iMS41Ii8+PGNpcmNsZSBmaWxsPSIjMDAwIiBjeD0iODEuNSIgY3k9IjEzNC41IiByPSIxLjUiLz48Y2lyY2xlIGZpbGw9IiMwMDAiIGN4PSIxMy41IiBjeT0iMjMuNSIgcj0iMS41Ii8+PHBhdGggZmlsbD0iIzAwMCIgZD0iTTkzIDcxaDN2M2gtM3ptMzMgODRoM3YzaC0zem0tODUgMThoM3YzaC0zeiIvPjxwYXRoIGQ9Ik0zOS4zODQgNTEuMTIybDUuNzU4LTQuNDU0IDYuNDUzIDQuMjA1LTIuMjk0IDcuMzYzaC03Ljc5bC0yLjEyNy03LjExNHpNMTMwLjE5NSA0LjAzbDEzLjgzIDUuMDYyLTEwLjA5IDcuMDQ4LTMuNzQtMTIuMTF6bS04MyA5NWwxNC44MyA1LjQyOS0xMC44MiA3LjU1Ny00LjAxLTEyLjk4N3pNNS4yMTMgMTYxLjQ5NWwxMS4zMjggMjAuODk3TDIuMjY1IDE4MGwyLjk0OC0xOC41MDV6IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMS4yNSIvPjxwYXRoIGQ9Ik0xNDkuMDUgMTI3LjQ2OHMtLjUxIDIuMTgzLjk5NSAzLjM2NmMxLjU2IDEuMjI2IDguNjQyLTEuODk1IDMuOTY3LTcuNzg1LTIuMzY3LTIuNDc3LTYuNS0zLjIyNi05LjMzIDAtNS4yMDggNS45MzYgMCAxNy41MSAxMS42MSAxMy43MyAxMi40NTgtNi4yNTcgNS42MzMtMjEuNjU2LTUuMDczLTIyLjY1NC02LjYwMi0uNjA2LTE0LjA0MyAxLjc1Ni0xNi4xNTcgMTAuMjY4LTEuNzE4IDYuOTIgMS41ODQgMTcuMzg3IDEyLjQ1IDIwLjQ3NiAxMC44NjYgMy4wOSAxOS4zMzEtNC4zMSAxOS4zMzEtNC4zMSIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjEuMjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPjwvZz48L3N2Zz4=');
  opacity: 0.1;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  height:100%;
  position: absolute;
  z-index: -1;   
}
#chat-input {
  background: #f4f7f9;
  width:100%; 
  position:relative;
  height:47px;  
  padding-top:10px;
  padding-right:50px;
  padding-bottom:10px;
  padding-left:15px;
  border:none;
  resize:none;
  outline:none;
  border:1px solid #ccc;
  color:#888;
  border-top:none;
  border-bottom-right-radius:5px;
  border-bottom-left-radius:5px;
  overflow:hidden;  
}
.chat-input > form {
    margin-bottom: 0;
}
#chat-input::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #ccc;
}
#chat-input::-moz-placeholder { /* Firefox 19+ */
  color: #ccc;
}
#chat-input:-ms-input-placeholder { /* IE 10+ */
  color: #ccc;
}
#chat-input:-moz-placeholder { /* Firefox 18- */
  color: #ccc;
}
.chat-submit {  
  position:absolute;
  bottom:3px;
  right:10px;
  background: transparent;
  box-shadow:none;
  border:none;
  border-radius:50%;
  color:#5A5EB9;
  width:35px;
  height:35px;  
}
.chat-logs {
  padding:15px; 
  height:370px;
  overflow-y:scroll;
}

.chat-current-user-logs {
  padding:15px; 
  height:370px;
  overflow-y:scroll;
}

.chat-logs::-webkit-scrollbar-track
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    background-color: #F5F5F5;
}

.chat-logs::-webkit-scrollbar
{
    width: 5px;  
    background-color: #F5F5F5;
}

.chat-logs::-webkit-scrollbar-thumb
{
    background-color: #5A5EB9;
}



@media only screen and (max-width: 500px) {
   .chat-logs {
        height:40vh;
    }
    .chat-current-user-logs{
        height:40vh;
    }
}

.chat-msg.user > .msg-avatar img {
  width:45px;
  height:45px;
  border-radius:50%;
  float:left;
  width:15%;
}
.chat-msg.self > .msg-avatar img {
  width:45px;
  height:45px;
  border-radius:50%;
  float:right;
  width:15%;
}
.cm-msg-text {
  background:white;
  padding:10px 15px 10px 15px;  
  color:#666;
  max-width:50%;
  float:left;
  margin-left:10px; 
  position:relative;
  margin-bottom:20px;
  border-radius:30px;
  font-size: 0.8rem;
}
.times {
  background:white;
  padding:10px 15px 10px 15px;  
  color:#666;
  max-width:25%;
  float:left;
  margin-left:5px; 
  position:relative;
  margin-bottom:20px;
  border-radius:30px;
  font-size: 0.2rem;
  vertical-align: middle;
}
.userNick{
  text-align: left;
  font-size: 0.8rem;
}

.self > .userNick {  
  text-align: right;
  margin-right:10px;
}
.chat-msg {
  clear:both;    
}
.chat-msg.self > .cm-msg-text {  
  float:right;
  margin-right:10px;
  background: #5A5EB9;
  color:white;
}
.chat-msg.self > .times {  
  float:right;
  margin-right:5px;
  background: #5A5EB9;
  color:white;
}

.cm-msg-button>ul>li {
  list-style:none;
  float:left;
  width:50%;
}
.cm-msg-button {
    clear: both;
    margin-bottom: 70px;
}
    </style>
</head>

<body>
   
    <div id="body"> 
      
    <div id="chat-circle" class="btn btn-raised">
            <div id="chat-overlay"></div>
            <i class="far fa-comments" style="font-size: 1.5rem;"></i>
        </div>
      
      <div class="chat-box">
        <div class="chat-box-header">
          Chat
         
          <span class="chat-box-toggle"><i class="fas fa-times"></i></span>
        </div>
        <div class="chat-box-body">
          <div class="chat-box-overlay">   
          </div>
          <div class="chat-logs">
           
          </div><!--chat-log -->
        </div>
        <div class="chat-input">      
          <form>
            <input type="text" id="chat-input" placeholder="Send a message..."/>
          <button type="submit" class="chat-submit" id="chat-submit"><i class="fas fa-paper-plane"></i></button>
          </form>      
        </div>
      </div>
      
      
      
      
    </div>
    <script src="https://121.173.70.197:7777/socket.io/socket.io.js"></script>
<script>
$(function() {
	
	var socket = io.connect("121.173.70.197:7777");
	
	if("${ !empty sessionScope.loginUser}" && "${loginUser.F_NICK}" !='') {
		socket.emit("login_member", {id:"${loginUser.F_NICK}"})
	}
	
	 var INDEX = 0; 
  $("#chat-submit").click(function(e) {
    e.preventDefault();
    var msg11 = $("#chat-input").val(); 
    if($('#chat-input').val() == ''){
      return false;
    }
    var today = new Date();   
	var hours = today.getHours(); // 시
	var minutes = today.getMinutes();  // 분
	  var ampm = hours >= 12 ? 'pm' : 'am';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  var strTime = ampm + ' '+hours + ' : ' + minutes;
	// 내가 적은 메시지 전송
	 generate_message("${loginUser.F_NICK}",msg11,strTime,"self");
	//소켓 서버에 전송 -> 몽고디비로 메시지 내용 디비 저장
    socket.emit("send_msg", {id:"${loginUser.F_NICK}",msg:msg11,Time:strTime});
    
    
    var buttons = [
        {
          name: 'Existing User',
          value: 'existing'
        },
        {
          name: 'New User',
          value: 'new'
        }
      ];
  });
	//이전 채팅내용 가져오기
	socket.on('msgAll'+"${loginUser.F_NICK}",function(data){
		
		for(var i=0;i<data.length;i++){
			//data[i].userId,data[i].Time,data[i].message
				if(data[i].userId == "${loginUser.F_NICK}"){
				generate_message(data[i].userId,data[i].message,data[i].Time,"self");
				}else{
					generate_message(data[i].userId,data[i].message,data[i].Time,"user");	
				}
			
	    }
		
	});
  
	//소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
	socket.on('send_msg', function(data) {
		if(data.id != "${loginUser.F_NICK}"){
          generate_message(data.id,data.msg,data.Time,"user");
		}
	});
  
 
  function generate_message(nick,msg,time,type) {
    INDEX++;
    var str="";
    str += "<div id='cm-msg-"+INDEX+"' class='chat-msg "+type+"'>";
    str += "          <span class='msg-avatar'>";
    if(type == 'self'){
      str +=              "<div class='userNick' style='text-align:right;'>"+ nick +"</div>"
      str += "            <img src='data:image/jpeg;base64,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'/> ";
    }
    if(type == 'user'){
      str +=              "<div class='userNick' style='text-align:left;'>"+nick+"</div>"
      str += "            <img src='https://t1.daumcdn.net/cfile/tistory/997187385CB2011220'/> ";
    } 
    str += "          </span>";
    str += "          <div class='cm-msg-text'>";
    str += msg;
    str += "          </div>";
    str += "          <div class='times' style='font-size:0.03rem'>";
    str += time;
    str += "          </div>";
    str += "        </div>";
    $(".chat-logs").append(str);
    $("#cm-msg-"+INDEX).hide().fadeIn(300);
    if(type == 'self'){
     $("#chat-input").val(''); 
    }    
    $(".chat-logs").stop().animate({ scrollTop: $(".chat-logs")[0].scrollHeight}, 1000);    
  }  
  
  /* function generate_button_message(msg, buttons){    
   
    INDEX++;
    var btn_obj = buttons.map(function(button) {
       return  "              <li class=\"button\"><a href=\"javascript:;\" class=\"btn btn-primary chat-btn\" chat-value=\""+button.value+"\">"+button.name+"<\/a><\/li>";
    }).join('');
    var str="";
    str += "<div id='cm-msg-"+INDEX+"' class=\"chat-msg user\">";
    str += "          <span class=\"msg-avatar\">";
    str += "            <img src=\"https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745\">";
    str += "          <\/span>";
    str += "          <div class=\"cm-msg-text\">";
    str += msg;
    str += "          <\/div>";
    str += "          <div class=\"cm-msg-button\">";
    str += "            <ul>";   
    str += btn_obj;
    str += "            <\/ul>";
    str += "          <\/div>";
    str += "        <\/div>";
    $(".chat-logs").append(str);
    $("#cm-msg-"+INDEX).hide().fadeIn(300);   
    $(".chat-logs").stop().animate({ scrollTop: $(".chat-logs")[0].scrollHeight}, 1000);
    $("#chat-input").attr("disabled", true);
  } */
  
  $(document).delegate(".chat-btn", "click", function() {
    var value = $(this).attr("chat-value");
    var name = $(this).html();
    $("#chat-input").attr("disabled", false);
    generate_message(name, 'self');
  })
  
  $("#chat-circle").click(function() {    
    $("#chat-circle").toggle('scale');
    $(".chat-box").toggle('scale');
    $("#chat-current-user").toggle('scale');
  })
  
  $(".chat-box-toggle").click(function() {
    $("#chat-circle").toggle('scale');
    $(".chat-box").toggle('scale');
    $("#chat-current-user").toggle('scale');
  })

  
  
})
</script>