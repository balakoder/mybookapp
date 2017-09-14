package org.bookstore

 

class Book {

    static constraints = {
    name()
    title()
    distributor(nullable:true)
    author()
    publisher(nullable:true)
    summary()
    category(nullable:true)
    language(nullable:true)
    sellPrice(nullable:true)
     
    }
    
    String name
    String title
    String distributor
    String summary

    String author
    String publisher
    String category
    
    String language
  
    BigDecimal sellPrice
    
    
    Date dateCreated
    Date lastUpdated
     

    
    String toString() {
	name+':'+(language?:'')+':'+(sellPrice?:'')+':'+(type?:'')+':'+(category?:'')
	}
}
