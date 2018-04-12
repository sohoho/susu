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
		
			<td>序号</td>
			<td>课程名称</td>
			<td>分享人</td>
			<td>分享时间</td>
			<td>点评</td>
			
		</tr>
		<#list list as s>
		<tr>
			<td>${s.id}</td>
			<td>${s.kec}</td>
			<td>${s.name}</td>
			<td>${s.riqi}</td>
			<td><a href="jilu?id=${s.id}">查看点评记录(${count}条)</a></td>
		</tr>
		
		</#list>

	</table>
</body>
</html>