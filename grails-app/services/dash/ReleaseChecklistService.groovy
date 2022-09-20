package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap


class ReleaseChecklistService {
    EsewaReleaseService esewaReleaseService

//    def saveData (GrailsParameterMap params) {
//        ReleaseChecklist releaseChecklist = new ReleaseChecklist(params)
//        def response = AppUtil.saveResponse(false, releaseChecklist)
//        if (releaseChecklist.validate()) {
//            releaseChecklist.save(flush: true)
//        }
//        return response
//    }

    def addData(GrailsParameterMap params){
        ReleaseChecklist releaseChecklist = new ReleaseChecklist(params)
        def releaseId = esewaReleaseService.getById(params.releaseId)
        def release = releaseChecklist.setEsewaRelease(releaseId)
        def saveChecklist = releaseChecklist.save(release)
        return saveChecklist.save(flush: true)
    }

    def update(ReleaseChecklist releaseChecklist, GrailsParameterMap params){
        releaseChecklist.properties = params
        releaseChecklist.save(flush: true, failOnError: true)
    }

    def findReleaseChecklistByRelease(id){
        def esewaReleaseId = esewaReleaseService.getById(id)
        return  esewaReleaseId.releaseChecklist

    }
    def getById(Serializable id) {
        return ReleaseChecklist.get(id)
    }
    Boolean delete(ReleaseChecklist releaseChecklist) {
        try {
            releaseChecklist.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
