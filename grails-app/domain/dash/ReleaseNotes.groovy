package dash

class ReleaseNotes {

    Integer id
    Integer ticketNumber
    String ticketDescription
    String ticketType

    static belongsTo = [EsewaRelease: EsewaRelease]

    static constraints = {
        ticketType inList: ['Bug','Feature','Enhancement']
    }

    static mapping = {
        table 'ReleaseNotes'
        version false
        ticketNumber column: 'ticketNumber'
        ticketDescription column: 'ticketDescription'
        ticketType column: 'ticketType'
        id column: 'id',insertable: false, updateable: false
    }
}
