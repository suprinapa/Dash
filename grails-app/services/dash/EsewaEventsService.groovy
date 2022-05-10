package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaEventsService {

    def saveList(GrailsParameterMap params) {
        params.max = params.max ?: 10
        List<EsewaEvents> rList = EsewaEvents.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
        } as List<EsewaEvents>
        return rList
    }

    def saveData(GrailsParameterMap params) {
        EsewaEvents esewaEvents = new EsewaEvents(params)
        return esewaEvents.save(flush: true, failOnError: true)
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
