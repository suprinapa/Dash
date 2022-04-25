package dash

class Release {

    BigInteger id
    String releaseName
    String module
    String releaseVersion
    String environment

    Date startDate
    Date endDate

    static hasMany = [modules: Module]

    static constraints = {
        releaseName nullable: false
        module inList: ['User', 'Organization','CAS', 'Admin', 'Kernel', 'Merchant','Miscellaneous Feature','Merchant Integration','Money Transfer','Notification Server','Reporting','Settlement Switch']
        environment inList: ['Dev', 'QADev','RC','CodeFreeze', 'IR','Prod']
    }

    static mapping = {
        table 'release'
        version true
        releaseName column: 'releaseName'
        module column: 'module'
        releaseVersion column: 'releaseVersion'
        environment column: 'environment'
        id column: 'id',insertable: false, updateable: false
    }
}
