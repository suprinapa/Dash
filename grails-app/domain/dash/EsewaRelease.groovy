package dash

class EsewaRelease {

    String releaseName
    String releaseVersion_code
    ReleaseStatus releaseStatus
    EsewaRelease parentRelease
    Date createdDate
    Date startDate
    Date endDate

    static hasMany = [esewaComponents: EsewaComponents,releaseNotes:ReleaseNotes, releaseEnvironment:ReleaseEnvironment,
    releaseChecklist: ReleaseChecklist, esewaReleaseEvents: EsewaReleaseEvents]

    static constraints = {
        releaseName nullable: false
        releaseVersion_code nullable: false
        parentRelease nullable: true
    }

    static mapping = {

        table 'EsewaRelease'
        version true
        releaseName column: 'releaseName'
        releaseVersion_code column: 'releaseVersion_code'
        parentRelease column: 'parentRelease'
        startDate column: 'startDate'
        endDate column: 'endDate'
        createdDate column: 'createdDate'
        releaseNotes(cascade:'all-delete-orphan')
        releaseStatus column: 'releaseStatus'
    }
}
