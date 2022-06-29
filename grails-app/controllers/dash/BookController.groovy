package dash

class BookController {
    def index() {
        flash.message = "Welcome!"
    }

    def create(){
        [book: flash.redirectParams]
    }
    def save(){
        new Book(title: params.title)
//                .addToAuthors(new Author(name: params.name))
                .save(failOnError: true, flush: true)
    }

 }
