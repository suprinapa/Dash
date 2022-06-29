package dash

import javax.transaction.Transactional

class AuthorController {
    def index() {
        flash.message = "Welcome!"
    }

    def create(){
        [authors: flash.redirectParams]
    }

    @Transactional
    def save(){
        // find book by book id
//        Book b =Book.findById(params.books)
        new Author(name: params.name)
                .addToAuthorBooks(AuthorBooks.findById(params.authorBooks as Long))
                .save()
    }
}
