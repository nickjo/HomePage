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
<link rel="stylesheet" type="text/css" media="screen" 
	href="css/jquery.treeview.css" />	
<link rel="stylesheet" type="text/css" media="screen" 
	href="css/screen.css" />	
	
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
<script type="text/javascript" src="js/jqGrid/jquery.treeview.js"></script>

<script type="text/javascript" src="js/systemMenu/systemMenu.js"></script>
<title>시스템 메뉴</title>
</head>
<jsp:include page="../common/navigator.jsp" flush="false" />
<jsp:include page="../common/side_menu.jsp" flush="false" />
<body>
<form name="frm">
	<div id="page-wrapper">
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div id="sidetree">
					<div class="treeheader"></div>
					<div id="sidetreecontrol">
						<a href="?#">전체 닫기</a> | <a href="?#">전체 열기</a>
					</div>
					<ul id="tree">
						<li>
							<strong>첫번째 메뉴</strong>
							<ul>
								<li>
									<a href="#">첫번째 서브메뉴</a>
								</li>
							</ul>
						</li>
						<li>
							<strong>두번째 메뉴</strong>
							<ul>
								<li><a href="#">첫번째 서브메뉴</a></li>
							</ul>
							<ul>
								<li>
									<a href="#">두번째 서브메뉴</a>
									<ul>
										<li>
											<a href="#">서브메뉴 속 첫번째 서브메뉴</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</div>				
			</div>
		</div>
	</div>
</form>
</body>
</html>