package dash

class EsewaReleaseEvents {

    Date createdDate
    Date approvedDate
    String approvedBy
    EsewaEvents esewaEvents
    EsewaRelease esewaRelease

    static constraints = {
        approvedDate nullable: false , blank: false
        approvedBy nullable: false , blank: false
    }

    static mapping = {
        version false
        createdDate column: 'createdDate'
        approvedDate column: 'approvedDate'
        approvedBy column: 'approvedBy'
    }

  /*  static EsewaReleaseEvents getByEsewaReleaseId(long esewaReleaseId) {
        find'from EsewaReleaseEvents where esewaRelease.id=:esewaReleaseId'
        [esewaReleaseId:esewaReleaseId]
    }*/
}
