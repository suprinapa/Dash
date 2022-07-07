package dash

class EsewaComponents {

    String componentName

    static hasMany = [esewaRelease:EsewaRelease]
    static  belongsTo = [EsewaRelease]

    static constraints = {
    }
    static mapping = {
        table 'EsewaComponents'
        version true
        componentName column: 'componentName'
    }
}
