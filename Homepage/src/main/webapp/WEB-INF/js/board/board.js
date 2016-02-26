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
		pager: '#pager1',
		/*jsonReader: { 
			root: "boardVO"
		},*/
		rowNum: "10",
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
});
