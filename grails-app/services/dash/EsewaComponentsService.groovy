package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional

class EsewaComponentsService {
    EsewaReleaseService esewaReleaseService
    def saveData(GrailsParameterMap params) {
       def esewaComponents = EsewaComponents.findAllByIdInList(params.esewaComponents*.toLong())
       def esewaRelease  = esewaReleaseService.getById(params.releaseId)
        esewaComponents.forEach({ e ->
            e.setComponentsInitiatedBy(params.componentsInitiatedBy)
            def release = e.addToEsewaRelease(esewaRelease as EsewaRelease)
            return release.save(flush: true, failOnError: true)
        })
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


    def findComponentsByEsewaRelease(id) {
        def esewaRelease = esewaReleaseService.getById(id)
        return esewaRelease.esewaComponents
//       return EsewaComponents.get(esewaRelease.id)
    }
}
