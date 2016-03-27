<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jqGrid/ui.jqgrid-bootstrap.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jqGrid/ui.jqgrid-bootstrap-ui.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jqGrid/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jqGrid/ui.multiselect.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jquery/jquery-ui.min.css" />
	
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>	

<!-- jquery -->
<script type="text/javascript" src="js/jquery/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="js/jquery/jquery-ui.min.js"></script>

<!-- jqGrid -->
<script type="text/javascript" src="js/jqGrid/grid.locale-kr.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.jqGrid.min.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.tablednd.js"></script>
<script type="text/javascript" src="js/jqGrid/ui.multiselect.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.contextmenu.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
<title>게시판</title>
</head>
<jsp:include page="../common/navigator.jsp" flush="false" />
<jsp:include page="../common/side_menu.jsp" flush="false" />
<body>
<form name="frm">
	<input type="hidden" id="jsontest" value="${boardVO}">
		<!-- jqGrid -->
		<div id="page-wrapper">
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<table id="myGrid"></table>
				<div id="pager1" class="ui-state-default ui-jqgrid-pager ui-corner-bottom" dir="ltr"></div>
				<!-- <div id="pkeynav" class="ui-state-default ui-jqgrid-pager ui-corner-bottom" dir="ltr" style="width: 700px;"> -->
			</div>
			
			<!-- 등록,수정,삭제 버튼 -->
			<div id="page-content-wrapper" align="right">
				<button id="btnWrite" class="btn btn-success">글쓰기</button>
				<button id="btnMod" class="btn btn-info">수정</button>
				<button id="btnDel" class="btn btn-danger">삭제</button>
			</div>
			<!--// 등록,수정,삭제 버튼 -->
		</div>
		</div>
		<!--// jqGrid  -->
</form>
</body>
</html>