package dash

class EsewaComponents {

    String componentName
    String componentsInitiatedBy

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
