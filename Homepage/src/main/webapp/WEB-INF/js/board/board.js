var $Grid = {};

$(function(){
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
	    },
	    gridview: true,
	    viewrecords: true
	}).navGrid('#pager1', { edit: false, add: false, del: false, refresh: true, search: false });
	//$("#list2").jqGrid('navGrid','#pager1',{edit:false,add:false,del:false});
});
