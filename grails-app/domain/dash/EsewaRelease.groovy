package dash

class EsewaRelease {

    Integer id
    String releaseName
    String releaseVersion
    String environment

    Date startDate
    Date endDate

    Set<EsewaModule>esewaModule
    Set<EsewaEvents>esewaEvents
    Set<ReleaseNotes>releaseNotes


    static hasMany = [esewaModule: EsewaModule, esewaEvents:EsewaEvents,releaseNotes:ReleaseNotes]
//    static hasOne = [releaseNotes:ReleaseNotes]

    static constraints = {
        id nullable: false, blank:false
        releaseName nullable: false
        releaseVersion nullable: false
        environment inList: ['Dev', 'QADev','RC','CodeFreeze', 'IR','Prod']
        startDate nullable: false, blank: false
        endDate nullable: false,blank: false
    }

    static mapping = {
        table 'EsewaRelease'
        version true
        releaseName column: 'releaseName'
        releaseVersion column: 'releaseVersion'
        environment column: 'environment'
        startDate column: 'startDate'
        endDate column: 'endDate'
        id column: 'id',insertable: false, updateable: false
        releaseNotes(cascade:'all-delete-orphan')
    }
}
