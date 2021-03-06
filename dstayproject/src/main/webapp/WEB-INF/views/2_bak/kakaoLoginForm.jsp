<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Johnson Chandra, Allysa Prabandani, Philipus Herlambang, Maya Editorial">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <meta name="twitter:card" content="summary">
    <meta name="title" content="Back to Kimi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-id">


    <!-- open graph metadata facebook, slack, whatsapp line -->
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    <!-- open graph metadata twitter -->
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">
    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
	<!--  -->
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

    <!-- Bootstrap core CSS -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">
    <link href="resources/css/2_bak/font-awesome.min.css?after" rel="stylesheet">
	<title>kakaoLogin</title>
<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>


    <!-- Boot Strap -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">

    <!-- Template css-->
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="resources/css/2_bak/logo-top.css" rel="stylesheet">
    <link href="resources/css/2_bak/top-menu.css" rel="stylesheet">
    <link href="resources/css/2_bak/mainBanner.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="resources/js/2_bak/mobile-menu.js"></script>
    <script type="text/javascript" src="resources/js/2_bak/mainBanner.js"></script>



    <style>
    html, body {
        height: 100%;
        margin: 0px;
        padding: 0px;
        background:rgb(245, 245, 245);
    }
    html {
        padding-bottom: 50px;
    min-height: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    position: relative;
    }

.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
.p-3 {padding: 5px;}
.guide{display:none;}.ok{color:green;}.ng{color:red;}.guidePw{display:none;}.okPw{color:green;}
.ngNum{color:red;}.ngSpe{color:red;}.ngLower{color:red;}.ngUpper{color:red;}
.hiddenNumber{display:none;}

    /* 테스트용 CSS */
    </style>
</head>
<body> 
<jsp:include page="../1_common/menubar.jsp"/> 
<div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
            <li><a href="home.do">Home</a></li>
            <li class="active">이메일 등록</li>
        </ol>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="row">
                    <div class="box-bg-white col-md-12 col-xs-12 form-medium-padding">
                        <h3 class="text-center text-gray-1">이메일 등록</h3>
                        <div class="clearfix maya-tiny-padding"></div>
                        <form action="kakaoLogin.do" method="post">
                            <div class="form-group" >
                            	<input type="hidden" name="nickName" value="${mem.nickName }">
                            	<input type="hidden" name="password" value="${mem.password }">
                                <input type="email" class="form-control" id="ajaxEmail" placeholder="이메일(예:user01@dstay.com)" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name = "email" required >
                                <span class="helvetica-12 guide ok" >사용가능한 이메일 입니다</span>
                                <span class="helvetica-12 guide ng" >이메일 형식에 맞춰 입력해 주세요</span>
                                <input type="hidden" id="hiddenCheck" value="0"><br>
                                <span class="text-gray-2 helvetica-12" align="center">카카오계정에 이메일이 없습니다</span><br>
                                <span class="text-gray-2 helvetica-12" align="center">이메일 기입 후 인증하셔야 회원가입이 완료됩니다</span>
                                <div class="clearfix maya-tiny-padding"></div>
                                <button type="button" onclick="validateEmail()" class="btn btn-outline-primary" id="validatebtn" disabled>인증받기</button>
                            </div>
                            <div class="form-group hiddenNumber">
                                <input type="text" class="form-control" id="exampleInputPassword" placeholder="인증번호를 입력해주세요">
                                <div class="clearfix maya-tiny-padding"></div>
                                <button type="button" onclick="verifyEmail()" class="btn btn-outline-primary" >확인</button>
                                <button type="reset" onclick="resetInput()" class="btn btn-outline-primary" >재입력</button>
                            </div>
                            <button type="submit" class="btn btn-block button-green-free btn-lg" id="submitbtn" disabled>가입하기</button>
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div><!-- /.container -->

<!--include footer-->
<div class="include-footer"></div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/2_bak/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/2_bak/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/2_bak/kimi.js"></script>
<script>
	$(document).ready(function() {
		$("#ajaxEmail").on("keyup",function() {
			var reg = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
			var check = $(this).val();
			if(check == "" || !reg.test(check)) {
				$(".ok").hide();
				$(".ng").show();
				$("#hiddenCheck").val(0);
			}else if(reg.test(check)){
			    $(".ng").hide();
				$(".ok").show(); 
				duplicateCheck();
			}
		})
		$("#exampleInputPassword2").on("keyup", function() {
					if(($("#exampleInputPassword2").val()) != "" && ($("#exampleInputPassword2").val() == $("#exampleInputPassword1").val())) {
						$("#submitbtn").attr("disabled",false);
					}
				})
	})
		function duplicateCheck() {
				$.ajax({
				url:"ajaxDuplicateCheck.do",
				method:"post",
				data:{checkEmail:$("#ajaxEmail").val()},
				error:function() {
					console.log("disconnected")
				},
				success:function(string) {
					console.log("ongoing");
					if(string == "available") {
						$("#hiddenCheck").val(1);
						$("#validatebtn").attr("disabled",false);
						
					}else {
						$("#hiddenCheck").val(0);
						$("#validatebtn").attr("disabled",true);
					}
				}
			})
		}
				var randomKey;
			function validateEmail() {
				if($("#hiddenCheck").val() == 1) {
					$.ajax({
						url:"ajaxVerifyEmail.do",
						method:"post",
						data:{email:$("#ajaxEmail").val()},
						error:function() {
							console.log("disconnected")
						},
						success:function(random) {
							$(".hiddenNumber").show();
							randomKey = random;
							$("#exampleInputPassword").focus();
						}
						})
				}else {
					alert("올바른 이메일 형식으로 입력해 주세요");
					$("#ajaxEmail").focus();
				}
			}
			function verifyEmail() {
				if($("#exampleInputPassword").val() == randomKey) {
					alert("인증이 완료되었습니다");
					$("#ajaxEmail").attr("readonly",true);
					$("#submitbtn").attr("disabled",false);
				}else {
					alert("인증번호가 일치하지 않습니다");
					$("#exampleInputPassword").focus();
				}
			}
			function resetInput() {
				$(".guide").hide();$(".hiddenNumber").hide();$("#validatebtn").attr("disabled",true);
			}
</script>
</body>
</html>