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


    def getById(Serializable id) {
        return Author.get(id)
    }
    @Transactional
    def delete(){
        def response = getById(1)
        response.delete(flush: true)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "author", action: "index")
            }
        }
}
