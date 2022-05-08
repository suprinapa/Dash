package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaEventsService {

    def eventsList()
    {
        List<EsewaEvents> eventsList = EsewaEvents.list(sort:"id", order:"asc")
        return eventsList
    }

    def saveData(GrailsParameterMap params) {
        EsewaEvents esewaEvents = new EsewaEvents(params)
        if (esewaEvents.validate()) {
            return esewaEvents.save(flush: true, failOnError: true)
        }
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


}
