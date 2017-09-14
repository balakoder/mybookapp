<%@ page import="org.bookstore.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="book.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${bookInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'distributor', 'error')} ">
	<label for="distributor">
		<g:message code="book.distributor.label" default="Distributor" />
		
	</label>
	<g:textField name="distributor" value="${bookInstance?.distributor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		
	</label>
	<g:textField name="author" value="${bookInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		
	</label>
	<g:textField name="publisher" value="${bookInstance?.publisher}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'summary', 'error')} ">
	<label for="summary">
		<g:message code="book.summary.label" default="Summary" />
		
	</label>
	<g:textField name="summary" value="${bookInstance?.summary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="book.category.label" default="Category" />
		
	</label>
	<g:textField name="category" value="${bookInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'language', 'error')} ">
	<label for="language">
		<g:message code="book.language.label" default="Language" />
		
	</label>
	<g:textField name="language" value="${bookInstance?.language}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'sellPrice', 'error')} ">
	<label for="sellPrice">
		<g:message code="book.sellPrice.label" default="Sell Price" />
		
	</label>
	<g:field name="sellPrice" value="${fieldValue(bean: bookInstance, field: 'sellPrice')}"/>
</div>

