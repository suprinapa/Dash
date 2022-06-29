package dash

class Book {
    String title

    static hasMany = [authorBooks: AuthorBooks]
    static constraints = {
    }
}
