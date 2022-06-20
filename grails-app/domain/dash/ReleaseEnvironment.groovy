package dash

class ReleaseEnvironment {

    EsewaEnvironment esewaEnvironment

    static constraints = {
    }
    static mapping = {
        table 'ReleaseEnvironment'
        version false
        esewaEnvironment column: 'esewaEnvironment'
    }
}
