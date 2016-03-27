var $Grid = {};
var w = 530;
var h = 550;
var leftPosition = (screen.width-w)/2 - 40;
var topPostion = (screen.height-h)/2;

$(function(){
	// 글쓰기 버튼 클릭
	$("#btnWrite").click(function(){
		fn_Write();
	});
	
	// 수정 버튼 클릭 이벤트
	$('#btnMod').click(function(){
		fn_Mod();
	});
	
	// 삭제 버튼 클릭 이벤트
	$('#btnDel').click(function(){
		fn_Del();
	});
	
	// Grid 생성
	fn_makeGrid();
});


/*******************************************************
 * Grid 생성 
 * *****************************************************/
function fn_makeGrid(){
	$Grid = $("#myGrid");
	$Grid.jqGrid({
		url: 'boardGsonList.do',
		datatype: "json",
		mtype: "get",
		height: "300",
		autowidth: true,
		rownumbers:true,
		/*jsonReader: { 
			root: "boardVO"
		},*/
		rowNum: "20",
		rowList: [10,20,50],
		pager:'#pager1',
		colNames:[
		          '이름',
		          '나이',
		          '성별',
		          '지역',
		          '부서'
		          ],
		colModel: [
		           {name:"name", width:40, align:"center"},
		           {name:"age", width:80, align:"left"},
		           {name:"sex", width:80, align:"left"},
		           {name:"local", width:80, align:"right"},
		           {name:"deptno",width:20, align:"center"},
		           ],
        multiselect: true,
        sortname: "name",
        jsonReader: {
        	repeatitems:false

	    }
      /*  postData: {
        	id: "id",
        	name: "name"
        }*/
	});
	$("#list2").jqGrid('navGrid','#pager1',{edit:false,add:false,del:false});
}

/*******************************************************
 * 게시판 글 작성 팝업 호출 
 * *****************************************************/
function fn_Write(){
	console.log("fn_Write()");
	var frm = document.frm;
	frm.action = "boardWrite.do";
	frm.submit();
	// window.open("boardModify.do?SEQ=" + tr.find("#SEQ").val(),'_blank','width=730,height=450,toolbar=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no');
	//window.open('boardWrite.do', '', "width=" + w + ", height=" + h + " ,top=" + topPostion + ", left=" + leftPosition + ", toolbar=no, scrollbars=no");
	
}

/*******************************************************
 * 게시판 글 수정 팝업 호출 
 * *****************************************************/
function fn_Mod(){
	alert("Mod");
	window.open('boardWrite.do', '', 'width=730, height=750, toolbar=no, scrollbars=no');
}

/*******************************************************
 * 게시판 글 삭제 
 * *****************************************************/
function fn_Del(){
	alert("Del");
}
