<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logInHome</title>
<style>
        img{width:150px;
            margin-top:20px;
            margin-bottom: 30px;}
        .SignUp{border:1px solid lightgray;
            width: 400px;
            height: 60px;
            display:table;
            margin: auto;
            text-align: center;
            margin-top: 10px;
            line-height:60px;}
        .LogIn{border:1px solid lightgray;
            width: 400px;
            height:350px;
            display:table;
            margin-left: auto;
            margin-right: auto;
            margin-top:70px;
            margin-bottom:auto;
            text-align: center;}
        .inputDesign{border:1px solid lightgray;
            border-radius: 3px;
            outline:none;
            background-color: rgb(245, 245, 245);
            width: 300px;
            height:35px;
            margin:3px;
            padding-left: 10px;}
        .submitDesign{border-radius: 3px;
            color: white;
            border:none;
            outline:none;
            background-color:lightskyblue;
            width: 314px;
            height:30px;
            margin-top: 15px;
            margin-bottom:20px;
            padding-left: 5px;
            padding-right: 5px;
            font-weight:bold;}
        a{text-decoration: none;
            color:dodgerblue;
        }
    </style>
</head>
<body>
    <div class="LogIn">
        <img src="images/instagram_logo.jpg" alt="">
        <form action="html_tag_ex_signup.html">
            <div class="">
                <div>
                    <input type="text" class="inputDesign" name="email" placeholder="전화번호, 사용자 이름 또는 이메일">
                </div>
                <div>
                    <input type="text" class="inputDesign" name="password" placeholder="비밀번호">
                </div>
            </div>
            <div>
                <input type="submit" class="submitDesign" value="로그인">
            </div>
        </form>
    </div>
    <div class="SignUp">
        <div>
            <span>계정이 없으신가요?</span><b><a href="">가입하기</a></b>
        </div>
    </div>
</body>
</html>