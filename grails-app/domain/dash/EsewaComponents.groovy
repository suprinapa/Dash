package dash

class EsewaComponents {

    Components componentName

     static  belongsTo = EsewaRelease

    static constraints = {
    }
    static mapping = {
        table 'EsewaComponents'
        version false
        componentName column: 'componentName'
    }
}
