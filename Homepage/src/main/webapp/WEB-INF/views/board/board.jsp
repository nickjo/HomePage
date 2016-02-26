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
<body>
<input type="hidden" id="jsontest" value="${boardVO}">
	<!-- navigator -->
	<div id="page-wrapper">
		<jsp:include page="../common/navigator.jsp" flush="false" />
		<!-- side menu -->
		<div id="sidebar-wrapper">
			<jsp:include page="../common/side_menu.jsp" flush="false" />
		</div>
		<!--// side menu -->

		<!-- jqGrid -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<table id="myGrid"></table>
				<div id="pager1"></div>
			</div>
		</div>
		<!--// jqGrid  -->
	</div>
	<!--// navigator -->
</body>
</html>