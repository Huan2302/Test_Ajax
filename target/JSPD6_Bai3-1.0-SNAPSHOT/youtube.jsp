<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Phim youtube</title>
	<meta name="description" content="Thiet ke website, dao tap lap trinh">
	<meta name="keywords" content="hiet ke website, dao tap lap trinh">
	<link href="style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-2.1.1.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- begin header -->
		<div id="header">
			<div class="header-left fl">
				<a href="index.html" title=""><img src="images/logo_edu.png" alt="" /></a>
			</div>
			<div class="header-right fr">
				<a href="index.html" title=""><img src="images/banner.jpg" alt="" /></a>
			</div>
			<div class="clr"></div>
		</div>
		<!-- end header -->
		
		<!-- begin menu -->
		<div id="menu">
			<ul>
				<li><a href="index.html" title="">Trang chủ</a></li>
				<li><a href="tintuc.html" title="">Tin tức</a></li>
				<li class="active"><a href="youtube.php" title="">Phim</a></li>
				<li><a href="lienhe.html" title="">Liên hệ</a></li>
			</ul>
			<div class="clr"></div>
		</div>
		<!-- end menu -->
		
		<!-- end content -->
		<div id="content">
			<div class="content-left fl">
				<h3>Học tiếng Anh qua phim Extra</h3>
				<ul>
					<li>
						<a href="javascript:void(0)" onclick="return getActive(1)" title="">Học tiếng Anh qua phim Extra (T1)</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="return getActive(2)" title="">Học tiếng Anh qua phim Extra (T2)</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="return getActive(3)" title="">Học tiếng Anh qua phim Extra (T3)</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="return getActive(4)" title="">Học tiếng Anh qua phim Extra (T4)</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="return getActive(5)" title="">Học tiếng Anh qua phim Extra (T5)</a>
					</li>
				</ul>
			</div>
			<div class="content-right fr">
				<h3>Học tiếng Anh qua phim Extra</h3>
				<div class="main-content">
					<div id="video-youtube">
						<iframe width="670" height="377" src="https://www.youtube.com/embed/1VbufbrV1Cg" frameborder="0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
			<div class="clr"></div>
		</div>
		<!-- end content -->
		
		<div id="footer">
			<p>Trung tâm đào tạo Lập trình VinaEnter EDU</p>
			<p>Copyright &copy 2016 - Designed by <a href="" title="">VinaEnter</a></p>
		</div>
	</div>
	<script type="text/javascript">
		function getActive(status){
			$.ajax({
				url: '<%=request.getContextPath()%>/xu-ly-active',
				type: 'POST',
				cache: false,
				data:{
					active:status,
				},
				success: function (data){
					$("#video-youtube").html(data);
				},
				error:function (){
					alert("lỗi");
				}
			});
			return false;
		}
	</script>
</body>
</html>
