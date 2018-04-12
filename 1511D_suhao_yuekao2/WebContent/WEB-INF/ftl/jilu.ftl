<#assign base=request.contextPath>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${base}/bootstrap-3.3.7/css/bootstrap.css">

<script type="text/javascript"
	src="${base}/bootstrap-3.3.7/js/jquery.js"></script>
<script type="text/javascript"
	src="${base}/bootstrap-3.3.7/js/bootstrap.js"></script>

<script type="text/javascript"> 
	function fenye(currentPage) {
		location.href="hello?currentPage="+currentPage;
	}
	
		function qx() {
		$(".ck").prop("checked", true);
	}
	function fx() {
		$(".ck").each(function() {
			$(this).prop("checked", !$(this).prop("checked"));
		})
	}
	
</script>
<base href="${base}/">
</head>
<body>
	
	<table class="table table-bordered table-hover table-striped">
	<tr>
	  课程名称:${s.kec} 分享人:${s.name} 分享时间：${s.riqi} 
	</tr>
		<tr>
		
			<td>序号</td>
			<td>评分</td>
			<td>评分内容</td>
			<td>操作</td>
			
			
		</tr>
		<#list kc as s>
		<tr>
			<td>${s.kid}</td>
			<td>${s.kpingf}</td>
			<td>${s.kname}</td>
			<td><a href="pinglun">我要评论</a></td>
		</tr>
		
		</#list>

	</table>
</body>
</html>