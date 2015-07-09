
<h2>Record List</h2>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="well">
		<a href="${pageContext.request.contextPath}/user/create?form"
			class="btn btn-primary">New Record</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/user/search"
			method="get" modelAttribute="userSearchForm"
			class="form-inline my-inline">
			<form:input path="name" class="form-control" />
			<input type="submit" value="Search" class="btn btn-default" />
		</form:form>
	</div>

	<table id="thetable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>stu_id</th>
				<th>name</th>
				<th>score</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${page.content}">
				<tr>
					<td>${f:h(user.id)}</td>
					<td>${f:h(user.stu_id)}</td>
					<td>${f:h(user.name)}</td>
					<td>${f:h(user.score)}</td>
					<td><form:form
							action="${pageContext.request.contextPath}/user"
							class="form-inline">
							<input type="hidden" name="id" value="${f:h(user.id)}" />
							<input type="submit" class="btn btn-default"
								name="redirectToUpdate" value="Update" />
							<input type="submit" class="btn btn-danger"
								name="redirectToDelete" value="Delete" />
						</form:form></td>
				</tr>
			</c:forEach>
			<tr>
				<th>AVER</th>
				<th>0</th>
				<th>S^2</th>
				<th>0</th>
				<th></th>
			</tr>
		</tbody>
	</table>
	
	<script type="text/javascript">

    var table = document.getElementById( "thetable" );

    var totalRows = table.rows.length -1;

    var Sum = Aver = S = 0;

    for ( var i = 1; i < totalRows; ++ i ) {

        Sum += Number( table.rows[i].cells[3].innerHTML );
    }

    Aver=Sum/(totalRows-1);
    
    for ( var i = 1; i < totalRows; ++ i ) {
		var temp = (Number( table.rows[i].cells[3].innerHTML )-Aver) * (Number( table.rows[i].cells[3].innerHTML )-Aver);
        S += temp;
    }
    
    S=S/(totalRows-1);
    
    if (totalRows==1){
    	Aver=0;
    	S=0;
    }
    table.rows[i].cells[1].innerHTML = Aver;
    table.rows[i].cells[3].innerHTML = S;

</script>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
