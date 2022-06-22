package dash

class EsewaRelease {

    ReleaseName releaseName
    String releaseVersion
    ReleaseStatus releaseStatus
    EsewaRelease parentRelease
    Date createdDate
    Date startDate
    Date endDate

    static hasMany = [esewaComponents: EsewaComponents,releaseNotes:ReleaseNotes, releaseEnvironment:ReleaseEnvironment,
    releaseChecklist: ReleaseChecklist, esewaReleaseEvents: EsewaReleaseEvents]

    static constraints = {
        releaseName nullable: false
        releaseVersion nullable: false
        parentRelease nullable: true
    }

    static mapping = {

        table 'EsewaRelease'
        version true
        releaseName column: 'releaseName'
        releaseVersion column: 'releaseVersion'
        parentRelease column: 'parentRelease'
        startDate column: 'startDate'
        endDate column: 'endDate'
        createdDate column: 'createdDate'
        releaseNotes(cascade:'all-delete-orphan')
        releaseStatus column: 'releaseStatus'
    }
}
