package dash

class ReleaseNotes {

  /*  TicketType ticketType
    TicketPriority ticketPriority*/
    String releaseNotesDescription

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {

    }

    static mapping = {
        table 'ReleaseNotes'
        version false
    /*    ticketType column: 'ticketType'
        ticketPriority column: 'ticketPriority'*/
        releaseNotesDescription column: 'releaseNotesDescription'
    }
}
