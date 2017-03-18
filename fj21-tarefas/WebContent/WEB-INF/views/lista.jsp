<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<a href="novaTarefa">Criar nova tarefa</a>

	<br />
	<br />

	<table>

		<tr>
			<th>id</th>
			<th>Descrfição</th>
			<th>Finalizado?</th>
			<th>Data de Finalização</th>
		</tr>

		<c:forEach items="$(tarefas)" var="tarefa">

			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td>Não finalIzado</td>
				</c:if>

				<td>${tarefa.descricao}</td>

				<c:if test="${tarefa.finalizado eq true}">
					<td>FinalIzado</td>
				</c:if>

				<td>${tarefa.descricao}</td>

				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyy" /></td>
			</tr>

		</c:forEach>

	</table>

</body>
</html>