package dash

class Book {
    static belongsTo = Author
    static hasMany = [authors:Author]
    String title
}
