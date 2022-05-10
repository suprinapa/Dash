package dash

class EsewaEvents {

    Events eventName

    static hasMany = [esewaReleaseEvents: EsewaReleaseEvents]

    static constraints = {

    }
    static mapping = {
        table 'EsewaEvents'
        version false
        eventName column: 'eventName'
    }

}
