
<%@ page import="org.bookstore.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="book.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bookInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="book.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bookInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.distributor}">
				<li class="fieldcontain">
					<span id="distributor-label" class="property-label"><g:message code="book.distributor.label" default="Distributor" /></span>
					
						<span class="property-value" aria-labelledby="distributor-label"><g:fieldValue bean="${bookInstance}" field="distributor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="book.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${bookInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="book.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${bookInstance}" field="publisher"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="book.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${bookInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="book.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${bookInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="book.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${bookInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.sellPrice}">
				<li class="fieldcontain">
					<span id="sellPrice-label" class="property-label"><g:message code="book.sellPrice.label" default="Sell Price" /></span>
					
						<span class="property-value" aria-labelledby="sellPrice-label"><g:fieldValue bean="${bookInstance}" field="sellPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="book.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${bookInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="book.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${bookInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bookInstance?.id}" />
					<g:link class="edit" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
