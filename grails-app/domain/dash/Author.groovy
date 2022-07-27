package dash

class Author {
    String name
    static hasMany = [book : Book]
    static constraints = {

    }
}
