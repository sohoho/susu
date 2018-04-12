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


	

<base href="${base}/">
</head>
<body>
   <form action="addjia" method="post">
     <table class="table table-bordered table-hover table-striped">
     

          <tr>
          <td>
              评分<input type="text" name="kpingf">
          </td>
        </tr>
      
		<tr>
			<td>
			评论内容<input type="text" name="kname">
			</td>
		</tr>
       
          <tr>
          <td>
              <input type="submit" value="发布评论">
          </td>
        </tr>
     </table>
   </form>
</body>
</html>