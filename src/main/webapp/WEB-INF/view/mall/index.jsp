<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<%
	Gson gsonObj = new Gson();
	Map<Object,Object> map = null;
	List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:forEach items="${productList}" var="i" end="20" begin="0">

<c:set var="name" value="${i.productName}"></c:set>
<c:set var="quant" value="${i.productQuantity}"></c:set>

<%
	String name=(String)pageContext.getAttribute("name");
	Integer quant=Integer.parseInt((String)pageContext.getAttribute("quant"));
	map = new HashMap<Object,Object>(); 
	map.put("label",name );
	map.put("y", quant); 
	list.add(map);
	%>
</c:forEach>
<%
	String dataPoints = gsonObj.toJson(list);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>SWAAP</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/sweetalert.css">
	
	<!-- Percent Circle -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/percircle.css">

	<!-- Chartist Chart -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/chartist.min.css">

	<!-- FullCalendar -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/fullcalendar.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/fullcalendar.print.css" media='print'>

	<!-- Color Picker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/color-switcher.min.css">
	<script type="text/javascript">
	window.onload = function() { 
	 
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "light2",
		title: {
			text:"Product Quantity Graph"
		},
		axisX: {
			title: "Product"
		},
		axisY: {
			title: "Product Quantity"
		},
		data: [{
			type: "line",
			yValueFormatString: "#,##0",
			dataPoints : <%out.print(dataPoints);%>
		}]
	});
	chart.render();
	 
	}
</script>
</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->



<jsp:include page="header.jsp"></jsp:include>



<!-- /.fixed-navbar -->


<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jstl/sql_rt" %>
<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
					<form data-toggle="validator" action="insertDataset" method="post">
						<div class="form-group">
							<div id="chartContainer" style="height: 370px; width: 100%;"></div>
							<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
			<div class="row small-spacing">
				<div class="col-xl-4 col-12">
					<div class="box-content bg-success text-white">
						<div class="statistics-box with-icon">
							<i class="ico small far fa-user"></i>
								<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/swaap" user="root" password="root" var="userVariable"/>
								<s:query var="users" dataSource="${userVariable}">
									Select count(*) as user from login_table where enabled=1 and role='ROLE_USER';
								</s:query>						
								<p class="text text-white">ACTIVE USERS</p>
								<x:forEach var="userCount" items="${users.rows}">
									<h2 class="counter">${userCount.user}</h2>
								</x:forEach>	
						</div>
					</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-xl-3 col-lg-6 col-12 -->
				<div class="col-xl-4 col-12">
					<div class="box-content bg-danger text-white">
						<div class="statistics-box with-icon">
							<i class="ico small far fa-user"></i>
							<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/swaap" user="root" password="root" var="userVariable"/>
							<s:query var="users" dataSource="${userVariable}">
								Select count(*) as user from login_table where enabled=0 and role='ROLE_USER';
							</s:query>
							<p class="text text-white">BLOCKED USERS</p>
							<x:forEach var="userCount" items="${users.rows}">
								<h2 class="counter">${userCount.user}</h2>
							</x:forEach>
						</div>
					</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-xl-3 col-lg-6 col-12 -->
				<div class="col-xl-4 col-12">
					<div class="box-content bg-warning text-white">
						<div class="statistics-box with-icon">
							<i class="ico small far fa-smile"></i>
							<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/swaap" user="root" password="root" var="feedbackVariable"/>
							<s:query var="feedbacks" dataSource="${feedbackVariable}">
								Select count(*) as feedback from feedback_table where status=b'1';
							</s:query>
							<p class="text text-white">NUMBER OF FEEDBACKS</p>
							<x:forEach var="feedbackCount" items="${feedbacks.rows}">
								<h2 class="counter">${feedbackCount.feedback}</h2>
							</x:forEach>
						</div>
					</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-xl-3 col-lg-6 col-12 -->
				
				<!-- /.col-xl-3 col-lg-6 col-12 -->
			</div>
						
			
			<div class="row small-spacing">
				<div class="col-xl-4 col-12">
					<div class="box-content bg-secondary text-white">
						<div class="statistics-box with-icon">
							<i class="ico small far fa-edit"></i>
								<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/swaap" user="root" password="root" var="complainVariable"/>
								<s:query var="complains" dataSource="${complainVariable}">
									Select count(*) as complain from complain_table where complain_status='Pending';
								</s:query>
								<p class="text text-white">PENDING COMPLAINS</p>
								<x:forEach var="complainCount" items="${complains.rows}">
									<h2 class="counter">${complainCount.complain}</h2>
								</x:forEach>
						</div>
					</div>
					<!-- /.box-content -->
				</div>
				<div class="col-xl-4 col-12">
					<div class="box-content bg-info text-white">
						<div class="statistics-box with-icon">
							<i class="ico small far fa-check-square"></i>
							<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/swaap" user="root" password="root" var="complainVariable"/>
							<s:query var="complains" dataSource="${complainVariable}">
								Select count(*) as complain from complain_table where complain_status='Resolved';
							</s:query>
							<p class="text text-white">COMPLAINS RESOLVED</p>
							<x:forEach var="complainCount" items="${complains.rows}">
								<h2 class="counter">${complainCount.complain}</h2>
							</x:forEach>
						</div>
					</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-xl-3 col-lg-6 col-12 -->
				
				<!-- /.col-xl-3 col-lg-6 col-12 -->
			</div>
			
			
		<div class="row small-spacing">
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar-4.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Tanay Shah</h4>
						<!-- /.name -->
						<p><a href="mailto:shahtanay17899@gmail.com">shahtanay17899@gmail.com</a></p>
						<div class="text-warning small">Team Leader</div>
						<!-- /.text-warning -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar-1.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Rainam Shah</h4>
						<!-- /.name -->
						<p><a href="mailto:rainams98@gmail.com">rainams98@gmail.com</a></p>
						<div class="text-custom small">Developer</div>
						<!-- /.text-custom -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar-2.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Ritu Shah</h4>
						<!-- /.name -->
						<p><a href="mailto:ritushah825@gmail.com">ritushah825@gmail.com</a></p>
						<div class="text-success small">Developer</div>
						<!-- /.text-warning -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar-3.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Harsh Yadav</h4>
						<!-- /.name -->
						<p><a href="mailto:7harshyadav@gmail.com">7harshyadav@gmail.com</a></p>
						<div class="text-danger small">Developer</div>
						<!-- /.text-custom -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			
			<!-- /.col-xl-6 col-12 -->
			<!-- /.col-xl-6 col-12 -->
		</div>
		<!-- /.row -->		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
</div>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/adminResources/js/html5shiv.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script data-cfasync="false" src="<%=request.getContextPath()%>/adminResources/js/email-decode.min.js"></script><script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/nprogress.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/sweetalert.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.min.js"></script>
	<!-- Full Screen Plugin -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.fullscreen-min.js"></script>

	<!-- Percent Circle -->
	<script src="<%=request.getContextPath()%>/adminResources/js/percircle.js"></script>

	<!-- Google Chart -->
	<script src="<%=request.getContextPath()%>/adminResources/js/loader.js"></script>

	<!-- Chartist Chart -->
	<script src="<%=request.getContextPath()%>/adminResources/js/chartist.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.chartist.init.min.js"></script>

	<!-- FullCalendar -->
	<script src="<%=request.getContextPath()%>/adminResources/js/moment.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/fullcalendar.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/fullcalendar.init.js"></script>

	<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/color-switcher.min.js"></script>
</body>
</html>