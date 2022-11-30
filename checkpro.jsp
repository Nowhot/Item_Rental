<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");


String YID = request.getParameter("PR_YID");

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>F5 - Sign In</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
</head>
<body>
<%
  Connection conn = null;
  PreparedStatement pstmt = null;
  //ResultSet rs = null;
  Connection conn2 = null;
  PreparedStatement pstmt2 = null;


   try{  
    String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl"; // 건국, 재열 = xe
    String dbId="c##gnarly";
    String dbPass="1234";

    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
    
    String sql= "update PROD_DOC set PR_CANCEL = '수령 대기 및 승인 완료' WHERE  PR_YID = ?  ";
    
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1,YID);
    
    pstmt.executeUpdate();
    
      sql= "update C_CHECK set C_CHECK = '승인 완료' , C_CDATE = (to_date(sysdate,'yy.mm.dd')) WHERE  C_YID = ?";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1,YID);
      
      pstmt.executeUpdate();
 
    
     }catch(Exception e){ 
    out.print("오류가 발생하였습니다. 다시 시도해 주시기 바랍니다");
    e.printStackTrace();
  }finally{
	  if(pstmt != null) 
		 try{pstmt.close();}catch(SQLException sqle){}
	  if(conn != null) 
		 try{conn.close();}catch(SQLException sqle){}
  }

%>

</body>
<script>

	alert("승인 하였습니다.");
    location.href="MainPage.jsp";
</script>
</html>