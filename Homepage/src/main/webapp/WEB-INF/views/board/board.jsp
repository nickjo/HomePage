<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" media="screen" href="resources/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="resources/css/ui.jqgrid-bootstrap.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="resources/css/ui.jqgrid-bootstrap-ui.css"/>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="resources/js/jquery.jqGrid.min.js"></script>
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
<title>게시판</title>
</head>
<body>
<jsp:include page="../common/nav_side_page.jsp" flush="false"/>
<br><br>
<div id="page-wrapper">
 	<div id="page-content-wrapper">
		<div class="container-fluid">
			<table id="myGrid"></table>
			<div id="pager"></div>
		</div>
	</div> 
</div>
</body>
</html>