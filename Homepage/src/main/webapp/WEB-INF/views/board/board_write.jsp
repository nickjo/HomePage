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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

<!-- jquery -->
<script type="text/javascript" src="js/jquery/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="js/jquery/jquery-ui.min.js"></script>

<!-- jqGrid -->
<script type="text/javascript" src="js/jqGrid/grid.locale-kr.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.jqGrid.min.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.tablednd.js"></script>
<script type="text/javascript" src="js/jqGrid/ui.multiselect.js"></script>
<script type="text/javascript" src="js/jqGrid/jquery.contextmenu.js"></script>
<script type="text/javascript" src="js/board/board_write.js"></script>
<title>게시판 작성</title>
</head>
<jsp:include page="../common/navigator.jsp" flush="false" />
<jsp:include page="../common/side_menu.jsp" flush="false" />
<body>
<form name="frm">
	<div id="page-wrapper">
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<table id="inserTable" border="1">
					<colgroup>
						<col width="20%"/>
						<col width="90%"/>
						<col width="*"/>
					</colgroup>
					<tbody>
						<tr>
							<td>
								<label>제목</label>
							</td>
							<td colspan="2">
								<input type="text" id="title" name="title" width="80%">
							</td>
						</tr>
						<tr>
							<td>
								<label>내용</label>
							</td>
							<td>
								<textarea id="content" name="content" rows="10" cols="50" ></textarea>
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<!-- 저장, 취소 버튼  -->
			<div id="page-content-wrapper" align="right">
				<button id="btnSave" name="btnSave" class="btn btn-success" onclick="#">저장</button>
				<button id="btnCancel" name="btnCancel" class="btn btn-info" onclick="#">취소</button>
			</div>
		</div>
	</div>
</form>
</body>
</html>