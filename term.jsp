<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box 회원가입</title>
<link rel="stylesheet" href="resources/css/join.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$("#marketingchk").hide();
	
	$("#all").click(function() {
		if($("#all").prop("checked")){
			$("input[name=chk]").prop("checked",true);
		}
		else{
            $("input[name=chk]").prop("checked",false);
        }
	})/* all end */
	
	
	$("input[name=chk]").click(function() {
		var chk = $("input[name=chk]").length;
		var chked = $("input[name=chk]:checked").length;
		
		if (chk != chked) $("#all").prop("checked", false);
		else $("#all").prop("checked", true);
	})/* input[name=chk] end */
	
	$("#marketing").click(function() {
		if($("#marketing").prop("checked")){
			$(".methodchk").prop("disabled", false);
		}
	})/* marketing end */
	
	
	$("#b").click(function() {
		if($("#all").prop("checked")){
			if ($("#marketing").prop("checked")){
				if($("#method0").prop("checked")){
					$(location).attr("href","join.jsp?terms=0&marketing=0&method=0");
				}
				else{
					$(location).attr("href","join.jsp?terms=0&marketing=0&method=1");
				}
			}
			else {
			$(location).attr("href","join.jsp?terms=0&marketing=1&method=2");
			}
		}
		else{
			alert("필수항목 동의여부를 확인해주세요.")
			$("#b").prop("disabled",true);
			$(location).attr("href","term.jsp");
		}
		
	})/* b end */
})
	
</script>
<style type="text/css">
	.total{
	background : white;
	width : 800px;
	height : 1000px;
	position : fixed;
	left: 560px;
	}
	
	#top{
	width: 660px;
	height: 150px;
	position: fixed;
	top: 100px;
	left: 630px;
	}
	
	#logo{
	width: 170px;
	height: 35px;
	position: fixed;
	top: 40px;
	left: 860px;
	}
	
	#center{
	width: 660px;
	height: 500px;
	position: fixed;
	top: 150px;
	left: 630px;
	border-top-style : solid;
	border-top-color: #503396;
	text-align: left;
	}
   
   li{
   list-style: none;
   float: left;
   display: inline;
   font-size: 15px;
   padding: 0px 0px 0px 0px;
   margin: 0px 20px 0px 20px;
   }
   
   #l2{
   background:#503396;
   color: white;
   font-weight: 900;
   }
   
   #b{
   width : 80px;
   height: 50px; 
   position: fixed;
   top: 850px;
   left:920px;
   background: #503396;
   color: white;
   font-size: medium;
   }
   #b:hover{
   cursor: pointer;
   }
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
		<ul>
			<li id="l1"> Step.1 본인인증 </li>
			<li id="l2"> Step.2 약관동의 </li>
			<li id="l3"> Step.3 정보입력 </li>
			<li id="l4"> Step.4 가입완료 </li>
		</ul>
	 
	 </div>
	<div id="center">
	<h2>약관동의 및 정보활용동의</h2>
	<input type="checkbox" id="all" style="width:20px;height:20px;"><b>필수항목 전체동의</b>
	<hr>
	<input type="checkbox" name="chk" id="chk1" class="chk" value="0">서비스 이용약관 동의(필수)<br>
		<textarea id="musttext" rows="7" cols="90">
	제 1조. 목적
			
본 약관은 기가박스중앙(주)(이하 “회사”라 합니다)가 제공하는 온라인, 오프라인 서비스(이하 "서비스"라 합니다) 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
			 
제 2조. 약관의 효력 및 변경
			
1. 본 약관은 서비스를 이용하고자 본 약관에 동의한 모든 회원에 대하여 그 효력을 발생합니다.
2. 본 약관의 내용은 회원(서비스)가입 시 게재되거나 공지된 내용에 회원이 동의함으로써 그 효력이 발생합니다.
3. 회사는 합리적인 사유가 발생될 경우 본 약관을 변경(수정 또는 개정)할 수 있으며, 약관을 개정할 경우 회사는 시행일 및 개정 사유를 명시하여 현행 약관과 함께 시행일로부터 최소 7일 전, 고객에게 불리하게 변경되거나 중요한 내용인 경우에는 최소 30일 전에 회사의 웹사이트 또는 전자메일 등을 통해 공지합니다.
4. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 탈퇴 요청을 하지 않을 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
	  </textarea><br><br>
	
	<input type="checkbox" name="chk" id="chk2" class="chk" value="0">개인정보 수집 및 이용 동의(필수)<br>
	<textarea id="must2text" rows="7" cols="90">
기가박스중앙(주)(이하 "회사")는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

  1. 필수 입력(수집) 항목
			 
구분   수집항목   수집 및 이용 목적
회원 가입 및 관리 필수 수집 항목   성명, 생년월일, 성별, 본인인증정보(CI, DI), 아이핀 번호(아이핀 본인인증 일 경우),
아이디, 비밀번호, 휴대폰번호, 이메일   -메가박스 상품 구매에 대한 결제 및 예매 확인
- 회원 서비스 이용에 따른 본인 식별 및 실명 여부, 중복 가입 여부 확인
- 멤버십 서비스 제공
- 공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통 경로의 확보
- 드림센터 운영
14세미만 법정대리인의 이름, 휴대폰번호, CI   - 만 14세 미만 아동의 고객 가입을 위한 법정대리인 동의 여부 확인
모바일 서비스 이용 위한 필수 수집 항목   모바일 단말기기정보(모델명, OS종류, OS버전 정보)   -공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통 경로의 확보
-개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록보존
비회원으로부터
수집되는 정보   성명, 생년월일, 휴대폰번호, 비밀번호   홈페이지, 모바일 앱/웹 이용 시*간편 로그인 이용을 위해 제공받은 정보는 회원가입이 진행되지 않은 경우 즉시 파기합니다. 또한 닉네임, 프로필사진 정보는 SNS의 운영 정책에 따라 전송되나, 당사 DB에 저장하지 않고 즉시 파기 합니다.
		
		  </textarea><br><br>
	
	
	<input type="checkbox" id="marketing" value="0">마케팅 활용을 위한 개인정보 수집 이용 안내(선택)<br>
	<textarea id="markeringtext" rows="7" cols="90">
마케팅 활용을 위한 개인정보 수집 이용 안내(선택)
  수집목적
고객맞춤형 상품 및 서비스 추천, 당사 신규 상품/서비스 안내 및 권유, 사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유
  수집항목
이메일, 휴대폰번호, 주소, 생년월일, 선호영화관, 문자/이메일/앱푸쉬 정보수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그
  보유기간
회원 탈퇴 시 혹은 이용 목적 달성 시 까지
 동의  미동의
 혜택 수신설정
 알림  SMS  이메일
※ 이벤트, 신규 서비스, 할인 혜택 등의 소식을 전해 드립니다.
(소멸포인트 및 공지성 안내 또는 거래정보와 관련된 내용은 수신 동의 여부와 상관없이 발송됩니다.)
		
		  </textarea>
		 <h4>마케팅 및 알림내용 수신 방법</h4>
		 마케팅 활용을 위한 개인정보 수집 이용에 동의하셔야 선택이 가능합니다.(중복선택가능)<br>
		 <input type="checkbox" id="method0" class="methodchk" disabled="disabled" value="0">문자
		 <input type="checkbox" id="method1" class="methodchk" disabled="disabled" value="1">이메일
		 <button id="b">다음</button>
	</div>
</body>
</html>