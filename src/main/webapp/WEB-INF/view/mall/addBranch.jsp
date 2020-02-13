<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Branch</title>
    <!-- Main Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

    <!-- mCustomScrollbar -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.mCustomScrollbar.min.css">

    <!-- Waves Effect -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

    <!-- Sweet Alert -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/sweetalert.css">

    <!-- Color Picker -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/color-switcher.min.css">
</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->

<jsp:include page="header.jsp"></jsp:include>

<!-- /.fixed-navbar -->

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<div id="wrapper">
    <div class="main-content">
        <div class="row small-spacing">
            <div class="col-12">
                <div class="box-content">

                    <f:form onSubmit="return validateEmail();" data-toggle="validator" modelAttribute="branchVO"
                            method="post" action="saveBranch">

                        <h1 class="page-title">Add Branch</h1>
                        <div class="form-group">
                            <label for="stateName" name="brnst" class="control-label">Branch State</label>
                            <div class="form-group margin-bottom-20">
                                <f:select onchange="updateCities(this)" class="form-control" path="stateVO.id"
                                          placeholder="Select State">
                                    <f:option value="-1"> select branch </f:option>
                                    <c:forEach items="${stateList}" var="stateVariable">
                                        <f:option value="${stateVariable.id}">${stateVariable.stateName }</f:option>
                                    </c:forEach>
                                </f:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cityName" name="brnct" class="control-label">Branch City</label>
                            <div id="" class="form-group margin-bottom-20">
                                <f:select class="form-control" path="cityVO.id" placeholder="Select City"
                                          id="selectCityOptions">
                                    <%--									<c:forEach items="${cityList}" var="cityVariable">--%>
                                    <%--										<f:option value="${cityVariable.id}">${cityVariable.cityName }</f:option>--%>
                                    <%--									</c:forEach>--%>
                                </f:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <f:hidden path="id"/>
                            <label for="inputComplaintSubject" class="control-label">Branch Name</label>
                            <f:input path="branchName" name="brnnme" class="form-control"
                                     placeholder="Enter Branch Name" required="true"/>
                        </div>
                        <div class="form-group">
                            <f:hidden path="id"/>
                            <label for="inputComplaintSubject" class="control-label">User Name</label>
                            <f:input onblur="validateEmail()" path="userName" name="unme" class="form-control"
                                     id="username"
                                     placeholder="Enter User Name" required="true"/>
                        </div>
                        <div class="form-group">
                            <f:hidden path="id"/>
                            <label for="inputComplaintSubject" class="control-label">Password</label>
                            <f:password path="password" name="pwd" class="form-control"
                                        placeholder="Enter Password" required="true"/>
                        </div>


                        <div class="form-group">
                            <button type="submit" name="addst" class="btn btn-primary waves-effect waves-light">Add
                                Branch
                            </button>
                        </div>
                    </f:form>
                </div>
                <!-- /.box-content -->
            </div>
            <!-- /.col-12 -->
        </div>
        <!-- /.row small-spacing -->
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
    <!-- /.main-content -->
</div><!--/#wrapper -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/adminResources/js/html5shiv.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/respond.min.js"></script>
	<![endif]-->
<!--
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath()%>/adminResources/js/customValidator.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/customAjaxHandler.js"></script>


<script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/nprogress.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/sweetalert.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/waves.min.js"></script>
<!-- Full Screen Plugin -->
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.fullscreen-min.js"></script>

<!-- Validator -->
<script src="<%=request.getContextPath()%>/adminResources/js/validator.min.js"></script>

<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/color-switcher.min.js"></script>
</body>
</html>