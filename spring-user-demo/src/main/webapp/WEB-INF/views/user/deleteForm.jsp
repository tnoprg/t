<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/delete"
		modelAttribute="userForm" class="form-horizontal">
		<fieldset>
			<legend>Delete Record</legend>
			<div class="form-group">
				<form:label path="stu_id" class="col col-sm-2 control-label">Stu_id</form:label>
				<div class="col col-sm-10">${f:h(userForm.stu_id)}</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">Name</form:label>
				<div class="col col-sm-10">${f:h(userForm.name)}</div>
			</div>
			<div class="form-group">
				<form:label path="score" class="col col-sm-2 control-label">Score</form:label>
				<div class="col col-sm-10">${f:h(userForm.score)}</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="id" value="${f:h(user.id)}" />
					<form:hidden path="version" value="${f:h(user.version)}" />
					<input type="submit" class="btn btn-danger" name="delete"
						value="Delete" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>