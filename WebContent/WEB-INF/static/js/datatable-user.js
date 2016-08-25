$(function() {
	var Defaults = $.extend( $.fn.dataTable.defaults, {
		processing:true,
		responsive: true,
		searching: false,
		filter: false,
		paging:true,
		pagingType : "full_numbers",      //分页样式
		info:true,
		//"bStateSave": true, //是否把获得数据存入cookie
		//"bLengthChange":false, //关闭每页显示多少条数据
		//"bAutoWidth":true,//自动宽度
	    columnDefs: [
 	        { className: "text-center",targets: "_all"},
 	        { responsivePriority: 2, targets: 0 },
 	        { responsivePriority: 2, targets: -1 }
 	    ],
 	    order: [[1, "desc"]],
	    pageLength: 10,
        lengthMenu: [[10, 15, 20, 25, 50], [10,15, 20, 25, 50]],
        language: {
        	"processing" : "数据加载中，请稍候。。。",
        	"lengthMenu": "  _MENU_ 条数据",
            "emptyTable": "表格中没有数据~",
            "info": "显示 _START_ 到 _END_ 条数据 共 _TOTAL_ 条数据",
            "infoEmpty": "没有数据~",
            "infoFiltered": "(在 _MAX_ 条数据中查询)",
            "lengthMenu": "显示 _MENU_ 条数据",
            "search": "查询:",
            "zeroRecords": "没有找到对应的数据",
            "paginate": {
                "previous":"上一页",
                "next": "下一页",
                "last": "末页",
                "first": "首页"
            }
       }
	});
	
	//This is the best solution for select2 configuration
	$.fn.select2.defaults.set('language', 'zh-CN');
	$.fn.select2.defaults.set('width', '100%'); 
	$.fn.select2.defaults.set('theme', 'bootstrap');
	$.fn.select2.defaults.set('placeholder', '请选择');
	$.fn.select2.defaults.set('allowClear', true);
})