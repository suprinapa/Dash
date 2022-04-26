package dash

class Events {

    Integer id
    String eventName

    static hasMany = [release:Release]
    static  belongsTo = Release

    static constraints = {
        eventName inList: ['Story Grooming', 'CodeFreeze','RC Deployment','IR Deployment','Production','RollBack','Retrospective']
    }
    static mapping = {
        table 'Events'
        version false
        eventName column: 'eventName'
        id column: 'id',insertable: false, updateable: false
    }

}
