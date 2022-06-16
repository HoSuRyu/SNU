<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta NAME="ROBOTS"CONTENT="NOINDEX,NOFOLLOW">
<title>Login</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<style>
* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

form {
	width: 700px;
	height: 500px;
	display: flex;
	flex-direction: column;
	align-items: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 2px solid rgb(89, 117, 196);
	border-radius: 10px;
}

input[type='text'], input[type='password'] {
	width: 75%;
	height: 40px;
	border: none;
	border-bottom: 2px solid rgb(89, 117, 196);
	font-size: 15px;
	padding: 0 10px;
	margin-bottom: 10px;
}

.id:focus, .pwd:focus {
	outline: none;
	border-bottom: 2px solid #0f0f70;
	transition: all 0.5s;
}

button {
	background-color: rgb(89, 117, 196);
	color: white;
	width: 300px;
	height: 50px;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	margin: 20px 0 30px 0;
	cursor: pointer;
}

#title {
	font-size: 50px;
	margin: 40px 0 20px 0;
}

#msg {
	height: 30px;
	text-align: center;
	font-size: 18px;
	color: red;
}

.submit {
	background-color: rgb(89, 117, 196);
	border: none;
	border-radius: 3px;
	width: 75%;
	padding: 8px 0;
	transition: all 0.3s;
	font-size: 14px;
	margin-bottom: 5px;
	margin-top: 10px;
	cursor: pointer;
}

.submit:hover {
	color: white;
	background-color: #0f0f70;
	transition: all 0.3s;
}

img {
	width: 100px;
	height: 100px;
}

@media ( max-width :900px) {
	* {
		box-sizing: border-box;
	}
	a {
		text-decoration: none;
	}
	form {
		width: 90%;
		height:;
		display: flex;
		flex-direction: column;
		align-items: center;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		border: 2px solid rgb(89, 117, 196);
		border-radius: 10px;
	}
	input[type='text'], input[type='password'] {
		width: 75%;
		height: 40px;
		border: none;
		border-bottom: 2px solid rgb(89, 117, 196);
		font-size: 15px;
		padding: 0 10px;
		margin-bottom: 10px;
	}
	.id:focus, .pwd:focus {
		outline: none;
		border-bottom: 2px solid #0f0f70;
		transition: all 0.5s;
	}
	button {
		background-color: rgb(89, 117, 196);
		color: white;
		width: 300px;
		height: 50px;
		font-size: 17px;
		border: none;
		border-radius: 5px;
		margin: 20px 0 30px 0;
		cursor: pointer;
	}
	#title {
		font-size: 50px;
		margin: 40px 0 20px 0;
	}
	#msg {
		height: 30px;
		text-align: center;
		font-size: 18px;
		color: red;
	}
	.submit {
		background-color: rgb(89, 117, 196);
		border-radius: 3px;
		width: 75%;
		padding: 8px 0;
		transition: all 0.3s;
		font-size: 14px;
		margin-bottom: 5px;
		margin-top: 10px;
		cursor: pointer;
		border: none;
	}
	.submit:hover {
		color: white;
		background-color: #0f0f70;
		transition: all 0.3s;
	}
	img {
		width: 100px;
		height: 100px;
	}
}
</style>
</head>
<body>


	<div class="main_box">

		<form action='${pageContext.request.contextPath}/login_ok.do'
			method='post' onsubmit="return formCheck(this);">
			<h3 id="title">
				<img
					src="${pageContext.request.contextPath}/assets/img/basic_logo.png">
			</h3>
			<div id="msg">
				<c:if test="${not empty param.msg}">
					<i class="fa fa-exclamation-circle">
						${URLDecoder.decode(param.msg)}</i>
				</c:if>
			</div>

			<input type='hidden' name='method' value='json' />  <input
				class="id" type='text' name='si_id' value=''
				placeholder="아이디를 입력해 주세요." autofocus /> <input class="pwd"
				type='password' name='si_pwd' value='' placeholder="비밀번호를 입력해 주세요." />
			<input class="submit" type='submit' value="입장하기" />
			<div style="font-size: 10px;">MySNU아이디로 로그인 가능합니다</div>
			<script
				src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
			<script>
				function XSSCheck(str, level) {
					if (level == undefined || level == 0) {
						str = str.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g,
								"");
					} else if (level != undefined && level == 1) {
						str = str.replace(/\</g, "&lt;");
						str = str.replace(/\>/g, "&gt;");
					}
					return str;
				}
				function formCheck(frm) {
					let msg = '';

					if (frm.si_id.value.length == 0) {
						setMessage('id를 입력해주세요.', frm.si_id);
						return false;
					}

					else if (frm.si_pwd.value.length == 0) {
						setMessage('비밀번호를 입력해주세요.', frm.si_pwd);
						return false;
					} else {
						var id = $(".id").val();
						var pwd = $(".pwd").val();

						id = XSSCheck(id, 0);
						pwd = XSSCheck(pwd, 0);
						$(".id").val(id);
						$(".pwd").val(pwd);

					}

					return true;
				}

				function setMessage(msg, element) {
					document.getElementById("msg").innerHTML = ` ${'${msg}'}`;

					if (element) {
						element.select();
					}
				}
			</script>
		</form>
	</div>



</body>
</html>