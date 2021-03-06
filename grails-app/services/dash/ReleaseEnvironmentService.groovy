package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ReleaseEnvironmentService {
EsewaReleaseService esewaReleaseService
/*    def saveList(GrailsParameterMap params) {
        params.max = params.max ?: 10
        List<ReleaseEnvironment> rList = ReleaseEnvironment.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
        } as List<ReleaseEnvironment>
        return rList
    }*/

    def saveData(GrailsParameterMap params) {
        ReleaseEnvironment releaseEnvironment = new ReleaseEnvironment(params)
        def releaseEnvironmentSave = releaseEnvironment.save(flush: true, failOnError: true)
        def esewaReleaseId = esewaReleaseService.getById(params.releaseId)
        def release = releaseEnvironmentSave.addToEsewaRelease(esewaReleaseId)
        release.save(flush: true)
    }

    def getById(Serializable id) {
        return ReleaseEnvironment.get(id)
    }

    def update(ReleaseEnvironment releaseEnvironment, GrailsParameterMap params){
        releaseEnvironment.properties = params
        releaseEnvironment.save(flush: true, failOnError: true)
    }

    Boolean delete(ReleaseEnvironment releaseEnvironment) {
        try {
            releaseEnvironment.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
    def findEnvironmentByEsewaRelease(id) {
        def esewaRelease = esewaReleaseService.getById(id)
        return esewaRelease.releaseEnvironment
//       return EsewaComponents.get(esewaRelease.id)
    }

}
