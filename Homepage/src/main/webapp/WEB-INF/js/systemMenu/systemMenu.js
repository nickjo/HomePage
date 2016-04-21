$(function(){
	console.log("systemMenu.js");
	
	$("#tree").treeview({
		collapsed: true,
		animated: "medium",
		control: "#sidetreecontrol",
		persist: "location"
	});
});