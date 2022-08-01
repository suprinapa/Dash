package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional

class EsewaEventsService {
    EsewaReleaseService esewaReleaseService
    def saveData(GrailsParameterMap params) {
        EsewaEvents esewaEvents = new EsewaEvents(params)
        def saveEvents = esewaEvents.save(flush: true, failOnError: true)
        def esewaRelease  = esewaReleaseService.getById(params.releaseId)
        EsewaReleaseEvents esewaReleaseEvents = new EsewaReleaseEvents()
        esewaReleaseEvents.setEsewaRelease(esewaRelease);
        esewaReleaseEvents.setCreatedDate(new Date())
        esewaReleaseEvents.setApprovedBy(params.approvedBy)
        esewaReleaseEvents.setApprovedDate(new Date())
        esewaReleaseEvents.setEsewaEvents(saveEvents)
        esewaReleaseEvents.save(flush: true, failOnError: true)
    }

    def getById(Serializable id) {
        return EsewaEvents.get(id)
    }

    def update(EsewaEvents esewaEvents, GrailsParameterMap params){
        esewaEvents.properties = params
        esewaEvents.save(flush: true, failOnError: true)
    }
    Boolean delete(EsewaEvents esewaEvents) {
        try {
            esewaEvents.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }



 /*   def findEventsByEsewaRelease(id) {
        def esewaRelease = esewaReleaseService.findEventsByEsewaRelease(id)
        return esewaRelease.esewaEvents
//       return EsewaComponents.get(esewaRelease.id)
    }*/
}
