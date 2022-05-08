package dash

class EsewaEvents {

    String eventName

    static hasMany = [esewaReleaseEvents: EsewaReleaseEvents]
//    static  belongsTo = EsewaRelease

    static constraints = {
        eventName inList: ['Story Grooming', 'Code Freeze','RC Deployment','IRDeployment','Production','RollBack','Retrospective']
    }
    static mapping = {
        table 'EsewaEvents'
        version false
        eventName column: 'eventName'
    }

}
