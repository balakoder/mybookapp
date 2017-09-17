import org.bookstore.Book
class BootStrap {

    def init = { servletContext ->




	      if(Book.count()==0)
	    		{

	    	println 'No books found in database'
			
	    	def book1 = new Book(name:'Java Performance',title:'Java Performance',distributor:'Pragati book Center,Pune',author:'Charli Hunt',publisher:'Pearson Publication',category:'Programming',language:'English',sellPrice:573)
			book1.save(flush:true)  

			def book2 = new Book(name:'Java Concurrency in Practice',title:'Java Concurrency in Practice',distributor:'Pragati book Center,Pune',author:'Brian Goetz',publisher:'Pearson Publication',category:'Programming',language:'English',sellPrice:2040.03)
			book2.save(flush:true)  


			def book3 = new Book(name:'Effective Java',title:'Java Performance',distributor:'Pragati book Center,Pune',author:'Joshua Bloch',publisher:'Pearson Publication',category:'Programming',language:'English',sellPrice:3231.88)
			book3.save(flush:true)  


			def book4 = new Book(name:'Thinking in Java',title:'Java Performance',distributor:'Ganesh book Center,Pune',author:'Charli Hunt',publisher :'Pearson Publication',category:'Programming',language:'English',sellPrice:2937.43)
			book4.save(flush:true)  


			println Book.count()
	    		
	    		Book.list().each{
	    		println it.name
	    		 
	    		}
	    		
     }

    }
    def destroy = {
    }
}


 