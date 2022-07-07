package dash

class ReleaseEnvironment {

    String esewaEnvironment

    static constraints = {
    }
    static mapping = {
        table 'ReleaseEnvironment'
        version false
        esewaEnvironment column: 'esewaEnvironment'
    }
}
