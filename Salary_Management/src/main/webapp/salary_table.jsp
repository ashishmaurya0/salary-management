<%@ page import="java.util.ArrayList"%>
<div class="table-responsive mt-4">
	<table class="table table-bordered table-hover">
		<thead class="table-primary">
			<tr>
				<th>ID</th>
				<th>Emp ID</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Date</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
			ArrayList<String[]> salaryList = (ArrayList<String[]>) request.getAttribute("salaryList");
			if (salaryList != null && !salaryList.isEmpty()) {
				for (String[] row : salaryList) {
			%>
			<tr>
				<td><%=row[0]%></td>
				<td><%=row[1]%></td>
				<td><%=row[2]%></td>
				<td><%=row[3]%></td>
				<td><%=row[4]%></td>
				<td><a href="edit_salary.jsp?id=<%=row[0]%>"
					class="btn btn-sm btn-warning"><i class="fas fa-edit"></i> Edit</a>
					<a href="DeleteSalaryServlet?id=<%=row[0]%>"
					class="btn btn-sm btn-danger"
					onclick="return confirm('Are you sure you want to delete this record?');">
						<i class="fas fa-trash-alt"></i> Delete
				</a></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="6" class="text-center text-muted">No salary
					records found.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>
