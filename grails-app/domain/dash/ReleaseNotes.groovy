package dash

class ReleaseNotes {

    Integer ticketNumber
    String ticketDescription
    String ticketType

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {
        ticketType inList: ['Bug','Feature','Enhancement']
    }

    static mapping = {
        //table 'ReleaseNotes'
        version false
        ticketNumber column: 'ticketNumber'
        ticketDescription column: 'ticketDescription'
        ticketType column: 'ticketType'
    }
}
