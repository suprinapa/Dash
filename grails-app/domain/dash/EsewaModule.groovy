package dash

class EsewaModule {

    Integer id
    String moduleName

    static hasMany = [esewaRelease:EsewaRelease]
    static  belongsTo = EsewaRelease

    static constraints = {
        moduleName inList: ['User','Organization','CAS', 'Admin', 'Kernel', 'Merchant','Miscellaneous Feature','Merchant Integration','Money Transfer','Notification Server','Reporting','Settlement Switch']
    }
    static mapping = {
        table 'EsewaModule'
        version false
        moduleName column: 'moduleName'
        id column: 'id',insertable: false, updateable: false
    }
}
