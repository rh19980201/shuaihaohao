<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/22
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>查询书籍</title>
    <link href="<%=request.getContextPath()%>/js/bootstarp/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery  datable/DataTables/css/dataTables.bootstrap.min.css" type="text/css">
</head>
<body>
<a href="<%=request.getContextPath()%>/book/toadd.jhtml">新增</a>
<table id="datatable" class="table table-striped table-bordered" style="width:100%">
    <thead>
    <tr>
        <th>书籍编号</th>
        <th>员工性别</th>
        <th>所在部门</th>
        <th>操作</th>
    </tr>
    </thead>
</table>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstarp/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery  datable/DataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery  datable/DataTables/js/dataTables.bootstrap.min.js"></script>
<script  type="text/javascript">
    $(function (){
        initDateble();
    })
    //初始化 datable
    function   initDateble(){
    $('#datatable').DataTable({
            "processing": true,
            // 是否允许检索
            "searching": false,
            "serverSide": true,
            "lengthMenu": [2, 4, 6, 8, 10],
            ajax: {
                url:"<%=request.getContextPath()%>/book/querylist.jhtml",
                type:"post"
            },
            "language": {
                "url": "<%=request.getContextPath()%>/js/jquery  datable/Chinese.json",
            },
            //参数
            "columns" : [
                {"data" : "id"},
                {"data" : "bookName"},
                {"data" : "bookPrice"},
                {"data" : "id",
                    "orderable": false,//禁止排序
                    "render":function (data,type,row,meta) {
                        return '<input type="button"   value="修改" onclick="toupdatebook('+data+')"/>'+'<input type="button"   value="删除" onclick="deleteBook('+data+')"/>';
                }}
            ]
        });

    }

    function  deleteBook(id) {
       $.ajax({
           type:"post",
           data:{
               "id":id
           },
           url:"<%=request.getContextPath()%>/book/deletebook.jhtml",
           success:function (rusult) {
                   alert("删除成功");
                   $('#datatable').dataTable().fnDraw(false);
           }
       })
    }
    //修改
    function  toupdatebook(id) {

        window.location.href="<%=request.getContextPath()%>/book/toupdatebook.jhtml?id="+id

    }
</script>
</body>
</html>
