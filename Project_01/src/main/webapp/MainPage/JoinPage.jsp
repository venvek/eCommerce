<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<script src="/resources/bootstrap/js/jquery-3.7.1.js"></script>
<script src="https://kit.fontawesome.com/a0b08e370a.js"
	crossorigin="anonymous"></script>
<!-- 	<script>history.scrollRestoration = "manual"</script> -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/fork-awesome@1.2.0/css/fork-awesome.min.css">
<style type="text/css">
.join_Title {
	margin-top: 100px;
	font-size: 30px;
	font-weight: 600;
	text-align: center;
	color: rgb(51, 51, 51);
	user-select: none;
}

.ban_Select {
	user-select: none;
}

.red_Color {
	color: red;
	user-select: none;
	font-size:12px;
	margin-bottom: 0px;
}

.black_Line {
	padding-bottom: 10px;
	border-bottom: 2px solid rgb(51, 51, 51);
	margin-bottom: 20px;
	font-size: 12px;
	color: rgb(102, 102, 102);
	line-height: 17px;
	text-align: right;
	display: flex;
	justify-content: right;
}

.line_Style {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	padding-bottom: 5px;
	min-height: 58px;
}

.agree_Style {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	padding-bottom: 5px;
	min-height: 48px;
}

.button_Style {
	display: flex;
	max-hegiht: 40px;
	min-width: 130px;
	padding-left: 15px;
}

.field_Name {
	font-weight: 700;
	user-select: none;
}

.input_Style {
	width: 100%;
	height: 38px;
	display: flex;
	border: 1px solid rgb(204, 204, 204);
	border-radius: 3px;
	padding: 0px 15px;
	align-items: center;
}

.mini_Font {
	margin-top: 5px;
	font-size: 10px;
	color: rgb(150, 150, 150);
	font-weight: 500;
}

.birth_Input {
	border: 0px;
	width: 100%;
	outline: none;
	text-align: center;
	padding-left: 10px;
	padding-right: 10px;
}

.gender_Font {
	font-size: 15px;
}

.terms_Style {
	padding-left: 35px;
	font-size: 14px;
	color: green;
	text-decoration: none;
}

.agreeCheck {
	
}

a:visited {
	color: green;
}

a:hover {
	color: green;
}

[type="radio"] {
	appearance: none;
	width: 13px;
	height: 13px;
	border: 1px solid green;
	border-radius: 50%;
}

[type="radio"]:checked {
	appearance: none;
	width: 13px;
	height: 13px;
	box-shadow: 0 0 0 1px white;
	border: 4px solid green;
}

[type="checkbox"] {
	display: none;
}

[type="checkbox"]+label {
	cursor: pointer;
}

[type="checkbox"]+label>span {
	vertical-align: middle;
	padding-left: 5px;
}

/* label:before에 체크하기 전 상태 CSS */
[type="checkbox"]+label:before {
	content: "";
	display: inline-block;
	width: 30px;
	height: 30px;
	vertical-align: middle;
	border-radius: 100%;
	background-repeat: no-repeat;
	background-image: url('../resources/img/unCheckedIcon.png');
	background-size: 30px;
}

/* label:before에 체크 된 상태 CSS */
[type="checkbox"]:checked+label:before {
	width: 30px;
	height: 30px;
	background-repeat: no-repeat;
	background-image: url('../resources/img/checkIcon.png');
	background-size: 30px;
}
</style>
</head>
<body>
	<jsp:include page="/Common/Header.jsp" />
	<main class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="join_Title">회원가입</div>
			</div>
		</div>
		<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="justify-content: center;">
				<div class="black_Line">
					<div>
						<span class="red_Color">*</span><span class="ban_Select">
							필수 입력사항</span>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							아이디<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="text" class="input_Style" id ="inputId" maxlength="16" oninput="inputId(this.id)" placeholder="아이디를 입력해주세요."
							onfocus="this.placeholder=''"
							onblur="this.placeholder='아이디를 입력해주세요.'" name="memberId">
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						
							<button type="button" class="btn btn-success">중복확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="idWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
		
		<script> 
				function inputId(id) {
				var id = document.getElementById(id).value;
				const re = /^(?=.*[a-zA-Z])[a-z0-9]{6,16}$/;
				if(re.test(id)){
					idWarning.textContent = "";	
				}else{
				idWarning.textContent = "6자 이상 16자 이하의 영문 혹은 영문과 숫자";}
				}
		</script>
		
			<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							비밀번호<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="password" class="input_Style" id="inputPwd" placeholder="비밀번호를 입력해주세요." oninput="inputPwd(this.id)"
							onfocus="this.placeholder=''"
							onblur="this.placeholder='비밀번호를 입력해주세요.'" name="memberPwd">
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="pwdWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
			
			<script>
			function inputPwd(pwd) {
				var pwd = document.getElementById(pwd).value;
				if(pwd.length < 8){
				pwdWarning.textContent = "비밀번호는 8자리 이상으로 설정해주세요."	
				}else{
				pwdWarning.textContent = "";
				}
			}
			</script>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							비밀번호 확인<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="password" class="input_Style"	id="inputPwdCheck"	oninput="inputPwdCheck(this.id)"
							placeholder="비밀번호를 한번 더 입력해주세요" onfocus="this.placeholder=''"
							onblur="this.placeholder='비밀번호를 한번 더 입력해주세요.'"
							name="memberPwdCheck">
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="pwdCheckWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
			
		<script>
		function inputPwdCheck(pwdCheck){
		var pwd = document.getElementById("inputPwd").value;
		var pwdcheck = document.getElementById(pwdCheck).value;
		if(pwd == pwdcheck){
			pwdCheckWarning.textContent = "비밀번호가 일치합니다.";
		}else{
			pwdCheckWarning.textContent = "비밀번호가 일치하지 않습니다.";
		}
	}
		
		</script>
		

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							이름<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="text" class="input_Style" placeholder="이름을 입력해주세요" id="inputName" oninput="inputNameCheck(this.id)" maxlength=10;
							onfocus="this.placeholder=''"
							onblur="this.placeholder='이름을 입력해주세요.'" name="memberName">
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="nameWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
			
		<script>
		function inputNameCheck(name){
		var name = document.getElementById(name).value;
		var re = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
		if(re.test(name)){
			nameWarning.textContent = "";
		}else{
			nameWarning.textContent = "이름이 형식이 틀립니다.";
		}
	}
		</script>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							이메일<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="text" class="input_Style" placeholder="이메일을 입력해주세요" id="inputEmail" oninput="inputEmailCheck(this.id)" maxlength="25"
							onfocus="this.placeholder=''"
							onblur="this.placeholder='이메일을 입력해주세요.'" name="memberEmail">
					</div>
					<div class="col-md-2">
						<div class="button_Style">
							<button type="button" class="btn btn-success">중복확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
			<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="emailWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
		
		<script>
		function inputEmailCheck(email){
		var email = document.getElementById(email).value;
		var email_re = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
		if(email_re.test(email)){
			emailWarning.textContent = "";
		}else{
			emailWarning.textContent = "이메일 형식이랑 다릅니다.";
		}
		}
		</script>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							휴대폰<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<input type="text" class="input_Style" placeholder="숫자만 입력해주세요" id="inputPhone" oninput="inputPhone(this.id)" maxlength="11" 
							onfocus="this.placeholder=''"
							onblur="this.placeholder='숫자만 입력해주세요.'" name="memberPhone">
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>
		
			<div class="row" style="justify-content: center;">
			<div class="col-md-6" style="display:flex; justify-content: center;">
					<div class="col-md-3">
						<div class="field_Name">
						</div>
					</div>
					<div class="col-md-6" >
					<p id="phoneWarning" class="red_Color" ></p>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
						</div>
					</div>
				</div>
			</div>
		
		<script>
		function inputPhone(id){
		var element = document.getElementById(id);
		element.value = element.value.replace(/[^0-9]/gi, "");
		var phone = element.value;
		if(phone.length < 10){
			phoneWarning.textContent = "핸드폰 번호를 입력해주세요.";
		}else{
			phoneWarning.textContent = "";
		}
		}
		</script>				

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">
							주소<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-6">
						<!-- 	<input type="text" class="input_Style" id="sample6_postcode"
								placeholder="우편번호"> -->
						<div class="line_Style" style="display:flex; align-items: flex-end">
						<button type="button" class="btn btn-success" style="width:100%; text-align:center;" id="searchButton"
								onclick="execDaumPostcode()" ><span><img src="/resources/img/joinSearchIcon.png" width=20px;/>주소 검색</span></button>
						
						
							<input type="text" class="input_Style" id="memberAddr" style="display:none;"
								placeholder="주소">
						</div>
						<input type="text" class="input_Style" id="detailAddr" style="display:none;"
							placeholder="상세주소">
						<!-- <input type="text" id="sample6_extraAddress" placeholder="참고항목">	 -->
						<div class="mini_Font">
							<span class="ban_Select" style="display:none;" id="noticeSpan" ><span class="red_Color" id="noticeSpan2">*</span>배송지에
								따라 상품 정보가 달라질 수 있습니다.</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="button_Style">
							<Button type="button" class="btn btn-success" style="display:none;" id="researchButton"
								onclick="execDaumPostcode()" ><span><img src="/resources/img/joinSearchIcon.png" width=20px;/>재검색</span></Button>
						</div>
						<script
							src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
							function execDaumPostcode() {
								var width = 400;
								var height = 500;
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
													document.getElementById("searchButton").style.display ="none";
													document.getElementById("memberAddr").style.display ="block";
													document.getElementById("detailAddr").style.display ="block";
													document.getElementById("noticeSpan").style.display ="flex";
													document.getElementById("noticeSpan2").style.display ="block";
													document.getElementById("researchButton").style.display ="block";
												// 각 주소의 노출 규칙에 따라 주소를 조합한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var addr = ''; // 주소 변수
												var extraAddr = ''; // 참고항목 변수

												//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
												if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
													addr = data.roadAddress;
												} else { // 사용자가 지번 주소를 선택했을 경우(J)
													addr = data.jibunAddress;
												}

												// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
												if (data.userSelectedType === 'R') {
													// 법정동명이 있을 경우 추가한다. (법정리는 제외)
													// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
													if (data.bname !== ''
															&& /[동|로|가]$/g
																	.test(data.bname)) {
														extraAddr += data.bname;
													}
													// 건물명이 있고, 공동주택일 경우 추가한다.
													if (data.buildingName !== ''
															&& data.apartment === 'Y') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													/*        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
													         if(extraAddr !== ''){
													             extraAddr = ' (' + extraAddr + ')';
													         }
													         // 조합된 참고항목을 해당 필드에 넣는다.
													         document.getElementById("sample6_extraAddress").value = extraAddr; */
												}/*  else {
												document.getElementById("sample6_extraAddress").value = '';}
												
												// 우편번호와 주소 정보를 해당 필드에 넣는다.
												document.getElementById('sample6_postcode').value = data.zonecode; */
												document.getElementById("memberAddr").value = addr;
												// 커서를 상세주소 필드로 이동한다.
												document.getElementById("detailAddr").focus();}}).open({
													    left: (window.screen.width / 2) - (width / 2),
													    top: (window.screen.height / 2) - (height / 2)
												});
							}
							
												
						</script>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style">
					<div class="col-md-3">
						<div class="field_Name">성별</div>
					</div>
					<div class="col-md-6" style="display: flex">
						<div class="col-md-4">
							<div class="ban_Select">
								<input type="radio" name="memberGender" value="man"> <span
									class="gender_Font"> 남자</span>
							</div>
						</div>
						<div class="col-md-4">
							<div class="ban_Select">
								<input type="radio" name="memberGender" value="woman"> <span
									class="gender_Font"> 여자</span>
							</div>
						</div>
						<div class="col-md-4">
							<div class="ban_Select">
								<input type="radio" name="memberGender" value="noSelect" checked>
								<span class="gender_Font"> 선택안함</span>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="line_Style" style="padding-bottom: 0px;">
					<div class="col-md-3">
						<div class="field_Name">생년월일</div>
					</div>
					<div class="col-md-6">
						<div class="input_Style">
							<div class="col-md-4">
								<input type="text" maxlength='4' class="birth_Input"
									id="memberBirthYear" oninput="inputNum(this.id)"
									placeholder="YYYY" onfocus="this.placeholder=''"
									onblur="this.placeholder='YYYY'" name="memberBirth">
							</div>
							<span class="ban_Select" style="color: grey">/</span>

							<div class="col-md-4">
								<input type="text" maxlength='2' class="birth_Input"
									id="memberBirthMonth" oninput="inputNum(this.id)"
									placeholder="MM" onfocus="this.placeholder=''"
									onblur="this.placeholder='MM'" name="memberBirth">
							</div>
							<span class="ban_Select" style="color: grey">/</span>

							<div class="col-md-4">
								<input type="text" maxlength='2' class="birth_Input"
									id="memberBirthDay" oninput="inputNum(this.id)"
									placeholder="DD" onfocus="this.placeholder=''"
									onblur="this.placeholder='DD'" name="memberBirth">
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="button_Style"></div>
					</div>
				</div>
			</div>
		</div>
	
		<div class="row" style="display: flex; justify-content: center;">		
			<div class="col-md-6" style="display: flex; justify-content: center;">
				<div class="col-md-5" style="display: flex; justify-content: left;">
					<div style="display: flex; justify-content: center;">
						<p id="birthWarning" class="red_Color"></p>
					</div>
				</div>
			</div>
		</div>

		<script>  														//숫자 외 입력 금지
				function inputNum(id) {
				var element = document.getElementById(id);
				element.value = element.value.replace(/[^0-9]/gi, "");
				
				year = document.getElementById("memberBirthYear").value;
				month = document.getElementById("memberBirthMonth").value;
				day = document.getElementById("memberBirthDay").value;
				
				if(id == "memberBirthYear" || id == "memberBirthMonth" || id == "memberBirthDay" ){
					if(year > 1924 && year < 2024){
						birthWarning.textContent = "태어난 월을 확인해주세요.";
						birthWarning.style.visibility = 'visible';
						year = true;
					}else{
						birthWarning.textContent = "태어난 년도를 정확히 입력해주세요.";
					}
					
					if(year == true){
						if(month > 0 && month < 13){
						birthWarning.textContent = "태어난 일을 확인해주세요.";
						month = true;
						
						if(month == true){
							if(day > 0 && day <31){
								day == true;
								birthWarning.textContent = "";
							}
						}
						}
					}
				}
			}
			</script>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="black_Line"></div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="agree_Style">
					<div class="col-md-3">
						<div class="field_Name">
							이용약관 동의<span class="red_Color">*</span>
						</div>
					</div>
					<div class="col-md-8"
						style="user-select: none; display: flex; align-items: center">
						<input type="checkbox" id="check_btn" class="agreeCheck"
							onclick="checkAll(this)" /><label for="check_btn"></label> <span
							class="ban_Select" style="font-weight: 600; font-size: 20px;">
							전체 동의합니다.<br>
						</span>
					</div>
				</div>
			</div>
		</div>

		<script>
				function checkAll(el){
					const checkBoxes  = document.querySelectorAll('.agreeCheck');
					  checkBoxes.forEach((row)=>{
					    row.checked = el.checked;
					  })
					}
			</script>


		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="agree_Style">
					<div class="col-md-3">
						<div class="field_Name"></div>
					</div>
					<div class="col-md-8"
						style="user-select: none; display: flex; align-items: center">
						<div class="mini_Font">
							<span class="ban_Select">선택 항목에 동의하지 않은 경우도 회원가입 및 일반적인
								서비스를 이용할 수 있습니다.</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="agree_Style">
					<div class="col-md-3">
						<div class="field_Name"></div>
					</div>
					<div class="col-md-8"
						style="justify-content: space-between; user-select: none;">
						<input type="checkbox" id="check_btn2" class="agreeCheck" onclick="agreeProcess(this.id)" /><label
							for="check_btn2"></label> <span class="ban_Select"
							style="font-weight: 500; font-size: 15px;">이용약관 동의 <span
							class="mini_Font" style="font-size: 15px;">(필수)</span><br></span> <a
							class="terms_Style">약관보기 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="agree_Style">
					<div class="col-md-3">
						<div class="field_Name"></div>
					</div>
					<div class="col-md-8"
						style="justify-content: space-between; user-select: none;">
						<input type="checkbox" id="check_btn3" class="agreeCheck" /><label
							for="check_btn3"></label> <span class="ban_Select"
							style="font-weight: 500; font-size: 15px;">개인정보 수집 이용 동의 <span
							class="mini_Font" style="font-size: 15px;">(선택)</span><br></span> <a
							class="terms_Style">약관보기 ></a>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="justify-content: center;">
			<div class="col-md-6">
				<div class="agree_Style">
					<div class="col-md-3">
						<div class="field_Name"></div>
					</div>
					<div class="col-md-8"
						style="justify-content: space-between; user-select: none;">
						<input type="checkbox" id="check_btn4" class="agreeCheck" onclick="agreeProcess(this.id)" /><label
							for="check_btn4"></label> <span class="ban_Select"
							style="font-weight: 500; font-size: 15px;">본인은 만 14세
							이상입니다. <span class="mini_Font" style="font-size: 15px;">(필수)</span><br>
						</span> <a class="terms_Style">약관보기 ></a>
					</div>
				</div>
			</div>
		</div>
		
		<script>
		function agreeProcess(id){	//전부 동의 체크 후 필수 체크 해제 시 전부 해제
		if(document.getElementById("check_btn").checked){
			if(!document.getElementById(id).checked){
				checkAll("check_btn");
			}
		}	//필수 항목 두개 체크시 전부 동의에 체크
		if(document.getElementById("check_btn2").checked && document.getElementById("check_btn4").checked){	
			document.getElementById("check_btn").checked = true;
			}
		}
		
		</script>
		
		<div class="row" style="justify-content: center;">
			<div class="col-md-6"
				style="display: flex; justify-content: center; padding: 40px 0px;">
				<button type="submit" class="btn btn-success"
					style="width: 240px; height: 56px;" name="join">가입하기</button>
			</div>
		</div>
	</main>
	<jsp:include page="/Common/Footer.jsp" />
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.bundle.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
</body>
</html>