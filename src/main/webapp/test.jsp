<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
</head>
<body>
    <header>
        <h1>MINESWEEPER</h1>
      </header>
<h:form>

 <h:dataTable styleClass="mine-body" value="#{mine.tableSize}">
		<h:column>
				<i class="fa fa-diamond" style="font-size:36px;color: lime;"></i>
		</h:column>
		<h:column>
				<i class="fa fa-diamond" style="font-size:36px;color: lime;"></i>
		</h:column>
		<h:column>
				<i class="fa fa-diamond" style="font-size:36px;color: lime;"></i>
		</h:column>
		<h:column>
				<i class="fa fa-diamond" style="font-size:36px;color: lime;"></i>
		</h:column>
		<h:column>
				<i class="fa fa-diamond" style="font-size:36px;color: lime;"></i>
		</h:column>
</h:dataTable>
</h:form>

</body>
</html>
</f:view>
