<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista tarefas</title>
</head>
<body>	

	<br />
	<br />

	<table>

		<tr>
			<th>id</th>
			<th>Descrfição</th>
			<th>Finalizado?</th>
			<th>Data de Finalização</th>
		</tr>

		<c:forEach items="${tarefas}" var="tarefa">

			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id}">
						<a href="#" onClick="finalaAgora(${tarefa.id})">Finaliza agora!</a>
					</td>
					
				</c:if>

				<td>${tarefa.descricao}</td>

				<c:if test="${tarefa.finalizado eq true}">
					<td>FinalIzado</td>
				</c:if>

				<td>${tarefa.descricao}</td>

				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>	
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>									
			</tr>

		</c:forEach>
		
	</table>

</body>
</html>