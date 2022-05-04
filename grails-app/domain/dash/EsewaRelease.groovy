package dash

class EsewaRelease {

    String releaseName
    String releaseVersion_code
    String releaseStatus
    String parentRelease
    Date createdDate
    Date startDate
    Date endDate

    static hasMany = [esewaComponents: EsewaComponents, esewaEvents:EsewaEvents, releaseNotes:ReleaseNotes, releaseEnvironment:ReleaseEnvironment,
    releaseChecklist: ReleaseChecklist]

    static constraints = {
        releaseName nullable: false
        releaseVersion_code nullable: false
        releaseStatus inList: ['In_Progress', 'Resolved']
        parentRelease nullable: true
    }

    static mapping = {

        table 'EsewaRelease'
        version true
        releaseName column: 'releaseName'
        releaseVersion_code column: 'releaseVersion_code'
        releaseStatus column: 'releaseStatus'
        parentRelease column: 'parentRelease'
        startDate column: 'startDate'
        endDate column: 'endDate'
        createdDate column: 'createdDate'
        releaseNotes(cascade:'all-delete-orphan')
    }
}
