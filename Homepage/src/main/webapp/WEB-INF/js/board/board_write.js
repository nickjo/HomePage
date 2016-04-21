$(function(){
	console.log("board_write.js");
	
	// 저장 버튼 클릭 이벤트
	$("#btnSave").click(function(){
		fn_Insert();
	});
	
	// 취소 버튼 클릭 이벤트
	$("#btnCancel").click(function(){
		fn_Cancel();
	});
});

/*******************************************************
 * 게시판 새글 저장 
 * *****************************************************/
function fn_Insert(){
	// title && content는 필수 입력 해야함
	if($("#title").val() == ""){
		alert("제목을 입력하세요.");
		$("#title").focus();
		return;
	}
	if($("#content").text() == ""){
		alert("내용을 입력하세요.");
		$("#content").focus();
		return;
	}
	console.log($("input[name=title]").val());
	alert("저장 되었습니다");
	
	var frm = document.frm;
	frm.method = "post";
	frm.action = "insertBoard.do";
	frm.submit();
}

/*******************************************************
 * 게시판 새글 저장 취소, board페이지로 이동 
 * *****************************************************/
function fn_Cancel(){
	var frm = document.frm;
	frm.action = "board.do";
	frm.submit();
}