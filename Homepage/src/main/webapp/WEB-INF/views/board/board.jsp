<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jquery -->
<script src="js/jquery/jquery-1.12.1.min.js"></script>

<!-- jquery ui -->
<script type="text/javascript" src="js/jquery/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery/jquery-ui.min.css"/>

<!-- jqGrid -->
<script type="text/javascript" src="js/jqGrid/grid.locale-kr.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.jqGrid.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="jqGrid/css/ui.jqgrid-bootstrap.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="jqGrid/css/ui.jqgrid-bootstrap-ui.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="css/jqGrid/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="css/jqGrid/ui.multiselect.css"/>

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