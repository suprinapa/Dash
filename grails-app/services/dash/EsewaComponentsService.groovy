package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional

class EsewaComponentsService {
    def saveData(GrailsParameterMap params) {
        EsewaComponents esewaComponents = new EsewaComponents(params)
        return esewaComponents.save(flush: true, failOnError: true)
    }

    def getById(Serializable id) {
        return EsewaComponents.get(id)
    }

    def update(EsewaComponents esewaComponents, GrailsParameterMap params){
        esewaComponents.properties = params
        esewaComponents.save(flush: true, failOnError: true)
    }
    Boolean delete(EsewaComponents esewaComponents) {
        try {
            esewaComponents.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }

}
