package dash

class ReleaseEnvironment {

    EsewaEnvironment esewaEnvironment

    static belongsTo = [esewaRelease: EsewaRelease]

    static constraints = {
    }
    static mapping = {
        table 'ReleaseEnvironment'
        version false
        esewaEnvironment column: 'esewaEnvironment'
    }
}
