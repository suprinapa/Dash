package dash

class ReleaseEnvironment {

    Long esewa_release_id
    EsewaEnvironment esewaEnvironment

    static constraints = {
    }
    static mapping = {
        table 'ReleaseEnvironment'
        version false
        esewaEnvironment column: 'esewaEnvironment'
    }
}
