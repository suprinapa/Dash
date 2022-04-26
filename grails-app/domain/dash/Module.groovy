package dash

class Module {
    String moduleName

    static hasMany = [release:Release]
    static  belongsTo = Release

    static constraints = {
        moduleName inList: ['User','Organization','CAS', 'Admin', 'Kernel', 'Merchant','Miscellaneous Feature','Merchant Integration','Money Transfer','Notification Server','Reporting','Settlement Switch']
    }
    static mapping = {
        table 'Module'
        version false
        moduleName column: 'moduleName'
    }
}
