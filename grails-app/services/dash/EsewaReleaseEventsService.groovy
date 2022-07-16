package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaReleaseEventsService {
/*    def saveList(GrailsParameterMap params) {
        EsewaReleaseEvents esewaReleaseEvents = new EsewaReleaseEvents(params)
        def response = AppUtil.saveResponse(false, esewaReleaseEvents)
        if (esewaReleaseEvents.validate()) {
            esewaReleaseEvents.save(flush: true)
        }
        return response
    }*/

    def saveData(GrailsParameterMap params) {
        EsewaReleaseEvents esewaReleaseEvents = new EsewaReleaseEvents(params)
        return esewaReleaseEvents.save(flush: true, failOnError: true)
    }

    def getById(Serializable id) {
        return EsewaReleaseEvents.get(id)
    }

    def getByRelease(EsewaRelease esewaRelease) {
        return EsewaReleaseEvents.findAllByEsewaRelease(esewaRelease)
    }

    def update(EsewaReleaseEvents esewaReleaseEvents, GrailsParameterMap params) {
        esewaReleaseEvents.properties = params
        esewaReleaseEvents.save(flush: true, failOnError: true)
    }

    Boolean delete(EsewaReleaseEvents esewaReleaseEvents) {
        try {
            esewaReleaseEvents.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}

