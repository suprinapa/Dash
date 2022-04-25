package dash

class Module {
    String moduleName

    static constraints = {
        moduleName inList: ['User', 'Organization','CAS', 'Admin', 'Kernel', 'Merchant','Miscellaneous Feature','Merchant Integration','Money Transfer','Notification Server','Reporting','Settlement Switch']
    }
    static mapping = {
        table 'module'
        version false
        moduleName column: 'moduleName'
    }
}
