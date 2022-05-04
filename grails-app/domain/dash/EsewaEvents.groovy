package dash

class EsewaEvents {

    String eventName

    static hasMany = [esewaRelease:EsewaRelease]
    static  belongsTo = EsewaRelease

    static constraints = {
        eventName inList: ['StoryGrooming', 'CodeFreeze','RC Deployment','IRDeployment','Production','RollBack','Retrospective']
    }
    static mapping = {
        table 'EsewaEvents'
        version false
        eventName column: 'eventName'
    }

}
