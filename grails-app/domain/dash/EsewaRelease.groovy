package dash

class EsewaRelease {

//    BigInteger id
    String releaseName
    String releaseVersion
    String environment

    Date startDate
    Date endDate

    static hasMany = [esewaModule: EsewaModule, esewaEvents:EsewaEvents]
    static hasOne = [releaseNotes:ReleaseNotes]

    static constraints = {
//        id nullable: false, blank:false
        releaseName nullable: false
        releaseVersion nullable: false
        environment inList: ['Dev', 'QADev','RC','CodeFreeze', 'IR','Prod']
        startDate nullable: false, blank: false
        endDate nullable: false,blank: false
    }

    static mapping = {
       // table 'esewaRelease'
        version false
        releaseName column: 'releaseName'
        releaseVersion column: 'releaseVersion'
        environment column: 'environment'
//        id column: 'id',insertable: false, updateable: false
    }
}
