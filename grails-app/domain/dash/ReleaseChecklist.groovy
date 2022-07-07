package dash

class ReleaseChecklist {

    String releaseCheckListDescription
/*    String type
    String remarks
    String ticketNumber*/

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {
        releaseCheckListDescription nullable: false , blank: false
 /*       remarks nullable: true , blank: true
        ticketNumber nullable: true , blank: false*/
    }
    static mapping = {
        table 'ReleaseChecklist'
        version false
        releaseCheckListDescription column: 'releaseCheckListDescription'
   /*     type column: 'type'
        ticketNumber column: 'ticketNumber'*/
    }
}
