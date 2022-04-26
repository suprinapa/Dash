package dash

class Release {

    BigInteger id
    String releaseName
    String releaseVersion
    String environment

    Date startDate
    Date endDate

    static hasMany = [module: Module,events:Events]
    static hasOne = [releaseNotes:ReleaseNotes]

    static constraints = {
        id nullable: false, blank:false
        releaseName nullable: false
        releaseVersion nullable: false
        environment inList: ['Dev', 'QADev','RC','CodeFreeze', 'IR','Prod']
        startDate nullable: false, blank: false
        endDate nullable: false,blank: false
    }

    static mapping = {
        table 'Release'
        version false
        releaseName column: 'releaseName'
        releaseVersion column: 'releaseVersion'
        environment column: 'environment'
        id column: 'id',insertable: false, updateable: false
    }
}
