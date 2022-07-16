package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ReleaseChecklistService {

    def saveData (GrailsParameterMap params) {
        ReleaseChecklist releaseChecklist = new ReleaseChecklist(params)
        def response = AppUtil.saveResponse(false, releaseChecklist)
        if (releaseChecklist.validate()) {
            releaseChecklist.save(flush: true)
        }
        return response
    }

    def update(ReleaseChecklist releaseChecklist, GrailsParameterMap params){
        releaseChecklist.properties = params
        releaseChecklist.save(flush: true, failOnError: true)
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
