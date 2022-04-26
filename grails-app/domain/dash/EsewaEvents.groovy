package dash

class EsewaEvents {

    Integer id
    String eventName

    static hasMany = [esewaRelease:EsewaRelease]
    static  belongsTo = EsewaRelease

    static constraints = {
        eventName inList: ['Story Grooming', 'CodeFreeze','RC Deployment','IR Deployment','Production','RollBack','Retrospective']
    }
    static mapping = {
        table 'EsewaEvents'
        version false
        eventName column: 'eventName'
        id column: 'id',insertable: false, updateable: false
    }

}
