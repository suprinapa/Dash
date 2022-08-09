package dash

class EsewaEvents {

    String eventName
    String initiatedBy

    static hasMany = [esewaReleaseEvents: EsewaReleaseEvents]

    static constraints = {

    }
    static mapping = {
        table 'EsewaEvents'
        version false
        eventName column: 'eventName'
        esewaReleaseEvents cascade: 'all-delete-orphan'
    }
}
