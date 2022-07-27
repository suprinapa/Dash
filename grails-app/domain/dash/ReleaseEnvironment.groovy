package dash

class ReleaseEnvironment {

    String esewaEnvironment
    static hasMany = [esewaRelease:EsewaRelease]
    static  belongsTo = [EsewaRelease]
    static constraints = {
    }
    static mapping = {
        table 'ReleaseEnvironment'
        version false
        esewaEnvironment column: 'esewaEnvironment'
    }
}
