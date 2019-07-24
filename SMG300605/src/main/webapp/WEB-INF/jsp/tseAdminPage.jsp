
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>TSE ========== Admin Page</h1>
<table border="20" width="70%" padding="2">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Edit</th>
		<th>Delete</th>
		<!-- th>Edit</th><th>Delete</th> -->
	</tr>
	<c:forEach var="tse" items="${list}">
		<tr>
			<td>${tse.id}</td>
			<td>${tse.name}</td>
			<td><a href="admin/edittse/${tse.id}">Edit</a></td>
			<td><a href="admin/deletetse/${tse.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br />
<a href="admin/tseform">Add Schdule</a>