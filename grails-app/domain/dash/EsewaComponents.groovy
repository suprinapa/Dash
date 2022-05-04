package dash

class EsewaComponents {

    String componentName

    static hasOne = [esewaRelease:EsewaRelease]
    static  belongsTo = EsewaRelease

    static constraints = {
        componentName inList: ['User','Organization','CAS', 'Admin', 'Kernel', 'Merchant','Miscellaneous Feature','Merchant Integration','Money Transfer','Notification Server','Reporting','Settlement Switch','Campaign Manager','SIM','Client Interface','UPI', 'Corporate ESewa']
    }
    static mapping = {
        table 'EsewaModule'
        version false
        componentName column: 'componentName'
    }
}
