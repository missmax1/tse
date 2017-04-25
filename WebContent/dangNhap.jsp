<%@page import="common.StringProcess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<html:form action="/dang-nhap" method="post">
		<div> 
		<label> Tên đăng nhập</label>
			<div>
				<html:text property="tenDangNhap"></html:text>
				<html:errors property="tenDNSai"/>
			</div>
		</div>
		<div> 
		<label> Mật khẩu</label>
			<div>
				<html:password property="matKhau"></html:password>
				<html:errors property="mkSai"/>
			</div>
		</div>
		<div>
			<p style="color: red">
				<bean:write name="nguoiDungForm" property="thongBao"/>
			</p>
		</div>
		<div>
			<html:submit>Đăng Nhập</html:submit>
			<html:reset>Reset</html:reset>
		</div>
	</html:form>
</body>
</html>