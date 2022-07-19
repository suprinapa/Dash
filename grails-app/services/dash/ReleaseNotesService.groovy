package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ReleaseNotesService {

     def saveData (GrailsParameterMap params) {
         ReleaseNotes releaseNotes = new ReleaseNotes(params)

         return releaseNotes.save(flush: true, failOnError: true)
    }

    def update(ReleaseNotes releaseNotes, GrailsParameterMap params){
        releaseNotes.properties = params
        releaseNotes.save(flush: true, failOnError: true)
    }

    def getById(Serializable id) {
        return ReleaseNotes.get(id)
    }
    Boolean delete(ReleaseNotes releaseNotes) {
        try {
            releaseNotes.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }

}
