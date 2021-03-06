
<%@ page import="org.bookstore.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type='text/css'>
    td,th {
       
        padding: 0;
        
    }
    </style>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li> <g:link class="edit" action="createPdfReport"  ><g:message code="Generate PDF" default="Generate PDF" /></g:link> </li>
			</ul>
		</div>

		



		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="distributor" title="${message(code: 'book.distributor.label', default: 'Distributor')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="publisher" title="${message(code: 'book.publisher.label', default: 'Publisher')}" />
					
						<g:sortableColumn property="summary" title="${message(code: 'book.summary.label', default: 'Summary')}" />

						 <g:sortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" />


                        <g:sortableColumn property="publisher" title="${message(code: 'book.publisher.label', default: 'Publisher')}" />


                        <g:sortableColumn property="category" title="${message(code: 'book.category.label', default: 'Category')}" />



					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "distributor")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "publisher")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "summary")}</td>

						<td>${fieldValue(bean: bookInstance, field: "author")}</td>
 

                        <td>${fieldValue(bean: bookInstance, field: "publisher")}</td>


                        <td>${fieldValue(bean: bookInstance, field: "category")}</td>

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
