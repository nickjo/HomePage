var $Grid = {};

$(function(){
	$Grid = $("#myGrid");
	$Grid.jqGrid({
		url: 'js/json/test.json',
		datatype: "json",
		mtype: "get",
		jsonReader: { 
			id: "id",
			root: "employee"
		},
		colNames:[
		          '아이디',
		          '이름',
		          '나이',
		          '성별',
		          '직위'
		          ],
		colModel: [
		           {name:"id", width:40, align:"center"},
		           {name:"name", width:80, align:"left"},
		           {name:"age", width:80, align:"left"},
		           {name:"sex", width:80, align:"right"},
		           {name:"position", width:50, align:"right"}
		           ],
        pager:"#pager",
        rowNum: "10",
        multiselect: true,
        postData: {
        	id: "id",
        	name: "name"
        }
	});
});
