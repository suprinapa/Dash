package dash

class ReleaseNotes {

    String ticketType
    String ticketPriority

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {
        ticketType inList: ['Bug','Feature','Enhancement','Security']
        ticketPriority inList: ['Urgent','Normal','High','Low']
    }

    static mapping = {
        table 'ReleaseNotes'
        version false
        ticketType column: 'ticketType'
        ticketPriority column: 'ticketPriority'
    }
}
