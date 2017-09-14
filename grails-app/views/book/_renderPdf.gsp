	
<%@ page import="org.bookstore.Book" %>
<!DOCTYPE html>
<html>
    <head>


  <style type='text/css' media='print'>
    body {
        margin: 0;
        padding: 0;
        background-color: #FAFAFA;
        font: 12pt "Tahoma";
    }
    * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }
    .page {
        width: 21cm;
        height: 29.7cm;
        padding-left: 1.6cm;
        #margin: 1cm;
        #border: 1px #D3D3D3 solid;
        #border-radius: 5px;
        background: white;
        #box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
      @page {
        size: A4;
        margin: 0;
    }

  @media print {
      html, body {
        width: 210mm;
        height: 297mm;

      }
   .page {
            margin: 0;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
    }

       
      </style>
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" />

    </head>
    <body>
        <p>Book List</p>
        <div id="list-book" class="content scaffold-list" role="main">
            
            
            <table class="table-bordered">
                <thead >
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
                    
                        <td>${fieldValue(bean: bookInstance, field: "name")}</td>
                    
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
        </div>
    </body>
</html>



