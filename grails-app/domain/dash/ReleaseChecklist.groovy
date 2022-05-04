package dash

class ReleaseChecklist {

    String description
    String type
    String remarks
    String ticketNumber

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {
        description nullable: false , blank: false
        remarks nullable: false , blank: true
        ticketNumber nullable: false , blank: false
    }
    static mapping = {
        table 'ReleaseChecklist'
        version false
        description column: 'description'
        type column: 'type'
        ticketNumber column: 'ticketNumber'
    }
}
