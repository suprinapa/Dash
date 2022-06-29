package dash

class Author {
    String name
    static hasMany = [authorBooks: AuthorBooks ]
    static constraints = {
    }
}
