<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");

int P_PNUM =Integer.parseInt(request.getParameter("P_PNUM"));
int P_SNUM =Integer.parseInt(request.getParameter("P_SNUM"));
String P_PNAME = request.getParameter("P_PNAME");
String DNAME = request.getParameter("DNAME");
String SNAME = request.getParameter("SNAME");
String P_AMOUNT = request.getParameter("P_AMOUNT");
String P_RENTAL = request.getParameter("P_RENTAL");
String P_IMAGES = request.getParameter("P_IMAGES");


%>
<!--String n = request.getParameter("n");-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>연성대학교 비품대여홈페이지</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
<style>
.squ{
        height: 40px;
        width: 1566px;
        position: relative;
        top: 0px;
        left: -150px;
        background-color:#43545F;
        border:0px;
    }
.squ2{
    height: 80px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:white;
    border:0px;
}
.squ3{
    height: 200px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:black;
    border:0px;
}
.squ4{
    height: 45px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:#1AB7EA;
    border:0px;
}
.logtext{
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:13px;
    word-spacing:14px ;
}
.logout{
    position:relative;
    top:0px;
    left:1050px;
    color:white;
    font-size:13px;
    word-spacing:15px ;
}
.button111{
    background-color: black;
        width:100px;
        height:40px;
        border: none;
        color: white;
        display: inline-block;
        font-size: 18px;
        position: relative;
        top: 85px;
        left: 325px;
    }
.button1111{
    background-color: black;
        width:100px;
        height:40px;
        border: none;
        color: white;
        display: inline-block;
        font-size: 18px;
    position: relative;
    top: 57px;
    left: 435px;
}
.button1{
    background-color: #1AB7EA;
    width:50px;
    border: none;
    height: 40px;
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:16px;
    font-weight: 600;
}
.button2{
    background-color: #43545F;
    width:auto;
    border: none;
    height: auto;
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:13px;
}
.imgs1{
    position:relative;
    left: 250px;
    height: 80px;
    cursor: pointer;
}
.imgs2{
    position:relative;
    left: 400px;
    height: 80px;

}
.imgs3{
    position: relative;
    height:40px;
    top: -2px;
    left: 300px;
}
.te1{
    color:black;
    position:relative;
    top: 3px;
    left: 350px;
    word-spacing:28px ;
    font-size: 18px;
}
.te2{
    color:#0877B5;
    position:relative;
    top: 3px;
    left: 380px;
    word-spacing:28px ;
    font-size: 18px;
    background-color: white;
    border: none;
}
.yss{
    color:white;
    position:relative;
    top: 50px;
    left: 730px;
    font-size: 60px;
}
.title{
    font-size:40px;
    color:black;
    position:relative;
    top: 40px;
    left: 555px;
}
.line1{
    width: 900px;
    position: relative;
    top: 60px;
    left: 200px;
    border: solid 2px black;

}
.line2{
    width: 900px;
    position: relative;
    top: 85px;
    left: 200px;
    border: solid 1px black;
}
.line3{
    width: 900px;
    position: relative;
    top: 115px;
    left: 200px;
    border: solid 1px black;
}
.line4{
    width: 900px;
    position: relative;
    top: 910px;
    left: 200px;
    border: solid 1px black;
}
.serv_list{
    padding-top: 70px;
    padding-bottom: 70px;
}
.serv_list .container11{

    max-width: 1100px;
    max-height: 500px;
    margin: auto;
}
.serv_list .container11 .title ul{
    padding-left: 0;
    list-style: none;
}
.serv_list .container11 .title ul li{
    display: inline;
    margin-right: 30px;
}
.serv_list .container11 .title ul li a{
    text-decoration: none;
    color: #444;
}
.serv_list .container11 .item_list{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}
.serv_list .container11 .item_list .card{
    border: 1px solid black;
    border-radius: 5px;
    height: 850px;
    width: 850px;
    padding:5px;
    justify-content: space-between;
    margin-bottom: 20px;
    position: relative;
    top: -50px;

}
.serv_list .container11 .item_list .card img{
    position: relative;
    top: 18px;
    left: 18px;
    height: 800px;
    width: 800px;
    padding: 5px;
}
.serv_list .container11 .item_list .card .text p{
    font-size: 14px;
    opacity: .8;
}
.serv_list .container11 .item_list .card .text button{
    background: black;
    color: white;
    border: 2px solid white;
    border-radius: 5px;
    padding:5px 10px;
    font-size: 10px;
    transition: .5s ease;
}
.serv_list .container11 .item_list .card .text button:hover{
    transition: .5s ease;
    border:2px solid black;
    background: transparent;
    color: black;
}

.t1{
    position: relative;
    top: 15px;
    left: 220px;
}
.t2{
    position: relative;
    top: 25px;
    left: 220px;
    font-size: 13px;
}
html {
  /* 영문이면 roboto가 적용되고, 한글이면 Noto Sans KR가 적용되도록 아래와 같은 순서로 배치 */
  font-family: "Roboto", "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li, h1 {
  margin:0;
  padding:0;
  list-style:none;
}

a {
  color:inherit;
  text-decoration:none;
}

label[for] {
  cursor:pointer;
  user-select:none;
}

/* 라이브러리 */
.block {
  display:block;
}

.inline-block {
  display:inline-block;
}

.relative {
  position:relative;
}

.cell {
  float:left;
  box-sizing:border-box;
}

.cell-right {
  float:right;
  box-sizing:border-box;
}

.row::after {
  content:"";
  display:block;
  clear:both;
}

.clear-both {
  clear:both;
}

.img-box > img {
  width:30%;
  display:block;
}

.con {
  margin-left:auto;
  margin-right:auto;
}

.margin-0-auto {
  margin-left:auto;
  margin-right:auto;
}

.text-align-center {
  text-align:center;
}

.text-align-right {
  text-align:right;
}

.line-height-0 {
  line-height:0;
}

.line-height-0 > * {
  line-height:normal;
}


.height-100p {
  height:100%;
}

.height-50p {
  height:50%;
}

.border-box {
  box-sizing:border-box;
}

.font-size-dot-8rem {
  font-size:.8rem;
}

/* 라이브러리 - flex */
* > .flex {
  display:flex;
}

* > .flex-grow-1 {
  flex-grow:1;
}

* > .flex-jc-s {
  justify-content:flex-start;
}

* > .flex-jc-e {
  justify-content:flex-end;
}

* > .flex-jc-sb {
  justify-content:space-between;
}

* > .flex-ai-c {
  align-items:center;
}

* > .flex-ai-s {
  align-items:flex-start;
}

* > .flex-ai-e {
  align-items:flex-end;
}

* > .flex-as-s {
  align-self:stretch;
}

* > .flex-as-c {
  align-self:center;
}

* > .flex-as-s {
  align-self:flex-start;
}

* > .flex-as-e {
  align-self:flex-end;
}

* > .flex-column-nowrap {
  flex-flow:column nowrap;
}

* > .flex-column-wrap {
  flex-flow:column wrap;
}

.flex-ch-basis-0 > * {
  flex-basis:0;
}

* > .flex-1-0-0 {
  flex:1 0 0;
}

/* 메뉴바 */
/* 커스텀 */

.con {
  width:1500px;
}
.btn-toggle-mobile-side-bar{
    margin-left:10px;
    width:50px;
    height:50px;
    position:relative;
    cursor:pointer;
}
.btn-toggle-mobile-side-bar > div{
    position:absolute;
    top:0;
    left:0;
    background-color:black;
    width:100%;
    height:10%;
}
.btn-toggle-mobile-side-bar > div:nth-child(2){
    top:40%;  
}
.btn-toggle-mobile-side-bar > div:nth-child(3){
    top:80%;  
}



.top-bar > .menu-bar > .img-box{
    height:50px;
    background-position:center;
    background-repeat: no-repeat;
    background-size: cover; 
}
.menu-box{
    position:fixed;
    width:250px;
    left:-300px;
    top:0;
    bottom:0;
    background-color:white; /*#dfdfdf*/
    opacity: 1;
    transition: left 0.3s; /* 0.3초만에 왼쪾에서 나옴*/
}

.menu-box.active{
    left:0;
}
.menu-box > .menu-box-1{
    flex-direction:column;
    width:100%;
} 
.menu-box > .menu-box-1 > .icon-1{
    justify-content:flex-end;
    font-size:30px;
    margin-top:0;
    margin-right:10px;
    cursor:pointer; 
}
.menu-box > .menu-box-1 > .main-txt{
    margin-top:50px;
    font-size:25px;
    font-weight:bold;
    padding:0 20px;
}
.menu-box > .menu-box-1 > ul{
    margin-top:70px;
    flex-direction:column;
}
.menu-box > .menu-box-1 > ul > li{
    font-size:18px;
}
.menu-box > .menu-box-1 > ul > li > a{
    border-bottom:1px solid #afafaf;
    padding:15px 20px;
    width:100%;
}
.menu-box > .menu-box-1 > ul > li:first-child > a{
    border-top:1px solid #afafaf;
}
.menu-box > .menu-box-1 > ul > li:hover > a{
    color:red;
}

.emphasized {
  position:fixed;
  top:150px; left:30px;
  box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px, rgba(0,0,0,0.5) 2px 2px 3px 3px;
  z-index : 100;
}
.emphasized1 {
  box-shadow : none;
  z-index: 0;
}
.buttonl{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        width:100px;
        height:55px;
        color: black;
        display: inline-block;
        font-size: 18px;
        position: relative; top:90px; left:300px;
    }
    .buttonl:hover{
        background-color: black;
        border-radius:5px;
        border: 1px solid black;
        color: white;
        display: inline-block;
        font-size: 18px;

        -webkit-transition: all .8s ease-out;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease-out;
    }

    .buttonl2{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        width:100px;
        height:55px;
        color: black;
        display: inline-block;
        font-size: 18px;
        position: relative; top:60px; left:420px; 
    }
    .buttonl2:hover{
        background-color: black;
        border-radius:5px;
        border: 1px solid black;
        color: white;
        display: inline-block;
        font-size: 18px;

        -webkit-transition: all .8s ease-out;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease-out;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="squ">
            <img class="imgs3" src="img/top_vr.png">
            <span class="logtext"><%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%>님</span>
            <button class="button1" onclick="location='MainPage.jsp'">연장</button>
            <button class="button2" onclick="location='Logout.jsp'">로그아웃</button>
        </div>
        <div class="squ2">
            <img class="imgs1" src="img/logo.PNG" Onclick="location='SubPage.jsp'">
            <span class="te1"><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
            <button class="te2" onclick="location='MainPage.jsp'"><strong><U>비품대여</U></strong></button>
            <img class="imgs2" src="img/bogi.PNG" >
        </div>
        <div class="squ3" style="background-image: url('img/ex.jpg'); background-size: 1600px 300px;">
            <span class="yss"><strong>Y S S</strong></span>
        </div>
        <div class="squ4">
            <img src="img/house.png" style="cursor:pointer; position:relative; top: 5px; left: 360px; width:30px; height: 30px;" onclick="location='MainPage.jsp'" >
            <div class="top-bar" style="z-index:5; background:white; width:10px; height:10px; position: relative; top:-573px; left: 1100px;">
                <div class="menu-bar" style="width:30px; height:30px;">
                    <div class="img-box" style="background:white;  color:white; height: 0px;"></div>
                    
            <div class="btn-toggle-mobile-side-bar">
              <img class="testImg" src="img/mark.png" style="cursor:pointer; position:relative; top: 550px; left: 90px; width:30px; height: 30px;" >
            </div>    
                   <div class="menu-box flex">
                       <div class="menu-box-1">
                           <div class="icon-1  flex"><i class="fas fa-times"></i></div>
                       <div class="main-txt flex">My Menu</div>
                       <ul class="flex">
                           <li class="flex"><a href="Product_RegistarForm.jsp">물품등록</a></li>
                           <li class="flex"><a href="checkcheck.jsp">신청조회</a>
                           <%
    Connection conn5 = null;
    PreparedStatement pstmt5 = null;
    String SNUM = String.valueOf(session.getAttribute("SNUM"));
    ResultSet myRS5 = null;
    int total5 = 0;
    
     try{
      String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
      String dbId="c##gnarly";
      String dbPass="1234";
      
      Class.forName("oracle.jdbc.driver.OracleDriver"); 
      conn5=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
          String sqlCount = "SELECT count(*) FROM C_CHECK a  ,PROD b  where  a.C_PNUM = b.P_PNUM and a.C_SNUM = ? and a.C_CHECK = '승인 완료'";
          pstmt5 = conn5.prepareStatement(sqlCount); 
          pstmt5.setString(1,SNUM);
          myRS5 = pstmt5.executeQuery();
          if(myRS5.next()){
              total5 = myRS5.getInt(1); // select문의 첫번째 값을 가져옴
          }
    
          if(total5 != 0){
         
    %>
    
    <strong class="pcount" style="position:relative; top:13px; left:-15px; z-index: 5; color: red;" > <%=total5%></strong>
    
    <%
    }
    }catch(Exception e){ 
    out.println("다시 시도해주세요.");
    e.printStackTrace();
    }finally{
    if(pstmt5 != null) 
    try{pstmt5.close();}catch(SQLException sqle){}
    if(conn5 != null) 
    try{conn5.close();}catch(SQLException sqle){}
    }
    %> 
                            </li>
                           <li class="flex"><a href="Rental_Check.jsp">대여조회</a></li>
                           <li class="flex"><a href="Product_RegistarCheck.jsp">등록물품확인</a></li>
                           <li class="flex"><a href="check.jsp">신청요청확인</a>
                           <%
    Connection conn6 = null;
    PreparedStatement pstmt6 = null;
    String snum = String.valueOf(session.getAttribute("SNUM"));
    ResultSet myRS6 = null;
    int total6 = 0;
    
     try{
      String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
      String dbId="c##gnarly";
      String dbPass="1234";
      
      Class.forName("oracle.jdbc.driver.OracleDriver"); 
      conn6=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
          String sqlCount = "SELECT count(*) FROM C_CHECK a ,PROD_DOC b ,ID c  ,PROD d where a.C_CHECK ='대기' and d.P_SNUM = ? and c.SNUM =a.C_SNUM  and a.C_PNUM = d.P_PNUM and b.PR_PNUM = a.C_PNUM and b.PR_YID = a.C_YID ";
          pstmt6 = conn6.prepareStatement(sqlCount);
          pstmt6.setString(1,snum); 
          myRS6 = pstmt6.executeQuery();
          if(myRS6.next()){
              total6 = myRS6.getInt(1); // select문의 첫번째 값을 가져옴
          }
         
          if(total6 != 0){
    %>
    
    <strong class="pcount1" style="position:relative;  top:13px; left:-15px; z-index: 5; color: red;"><%=total6%></strong>
    
    <%
          }
    }catch(Exception e){ 
    out.println("다시 시도해주세요.");
    e.printStackTrace();
    }finally{
    if(pstmt6 != null) 
    try{pstmt6.close();}catch(SQLException sqle){}
    if(conn6 != null) 
    try{conn6.close();}catch(SQLException sqle){}
    }
    %> 
                            </li>
                       </ul>
                   </div>
                       </div>
                </div>
            </div>
        </div>
        <div>
            <span class="title"><strong>삭 제 정 보</strong></span>
        </div>
        <hr class="line1">
        <hr class="line2">
        <hr class="line3">
        <p class="t1">물품명 : <strong><%=P_PNAME%></strong> |</p>
        <p class="t2">작성자 :  <strong><%=DNAME%>  <%=SNAME%></strong>  |  수량 :  <strong> <%=P_AMOUNT%></strong> |</p>
        <hr class="line4">
        <section class="serv_list">
            <div class="container11">
                <div class="item_list">
        
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet myRS = null;

String sql = "";
 try{
  String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
  String dbId="c##gnarly";
  String dbPass="1234";
  
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
  conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
  
      sql = "SELECT p.p_pnum, p.p_pname, i.dname, i.sname, p.p_amount, p.p_rental, p.p_snum, p.p_images FROM ID i, PROD p WHERE i.snum = p.p_snum and P.P_PNUM = ? AND i.snum = ?";
      pstmt = conn.prepareStatement(sql); 
      pstmt.setInt(1, P_PNUM);
      pstmt.setInt(2, P_SNUM);
      myRS = pstmt.executeQuery();
      if(myRS != null){
        while(myRS.next()){
        
          int p_pnum = myRS.getInt("P_PNUM");
          String p_pname = myRS.getString("P_PNAME");
          String dname = myRS.getString("DNAME");
          String sname = myRS.getString("SNAME");
          String p_amount = myRS.getString("P_AMOUNT");
          String p_rental = myRS.getString("P_RENTAL");
          int p_snum = myRS.getInt("P_SNUM");
          String p_images =myRS.getString("P_IMAGES");
%>

<div class="card">
    <div class="img">
        <img src="p_img/<%=p_images%>" alt="">
    </div>
    <button type="submit" class="buttonl" onclick="test()">재등록</button> 
    <script>
      function test() {
          if (confirm("물픔을 재등록하시겠습니까?")) {
              location.href="Product_RegistarTrashChangePro.jsp?P_PNUM=<%=P_PNUM%>&P_PNAME=<%=P_PNAME%>&DNAME=<%=DNAME%>&SNAME=<%=SNAME%>&P_SNUM=<%=P_SNUM%>&P_AMOUNT=<%=P_AMOUNT%>&P_RENTAL=<%=P_RENTAL%>";
          } else {
              alert("취소하셨습니다.");
              location.href="Product_RegistarTrash.jsp";
          }
      }
  </script>
    <button type="submit" class="buttonl2" onclick="location='Product_RegistarTrash.jsp'">취소</button>
   
  </div>




    <%
}
}
}catch(Exception e){ 
out.println("다시 시도해주세요.");
e.printStackTrace();
}finally{
if(pstmt != null) 
try{pstmt.close();}catch(SQLException sqle){}
if(conn != null) 
try{conn.close();}catch(SQLException sqle){}
}
%> 
</div>
</div>
</section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">

</script>
<script>
    function MobileSideBar__toggle() {
    var $btn = $('.btn-toggle-mobile-side-bar');

    if ( $btn.hasClass('active') ) {
        $btn.removeClass('active');
        $('.menu-box').removeClass('active');
    }
    else {
        $btn.addClass('active');
        $('.menu-box').addClass('active');
    }
}

function MobileSideBar__init() {
    $('.btn-toggle-mobile-side-bar, .menu-box > .menu-box-1 > .icon-1').click(MobileSideBar__toggle);
}

$(function() {
    MobileSideBar__init();
}); 


$(document).ready(function(){

$("img.testImg").click(function(){

  $("div.top-bar").toggleClass("emphasized");

});

})  


$(document).ready(function(){

$("i.fas fa-times").click(function(){

  $("div.container").toggleClass("emphasized1");

});

})  
</script>
</html> 

