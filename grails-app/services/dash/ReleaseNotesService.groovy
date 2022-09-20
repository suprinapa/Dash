package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ReleaseNotesService {
    EsewaReleaseService esewaReleaseService

     def saveData (GrailsParameterMap params) {
         ReleaseNotes releaseNotes = new ReleaseNotes(params)
         def releaseId = esewaReleaseService.getById(params.releaseId)
         def release = releaseNotes.setEsewaRelease(releaseId)
         def saveNotes = releaseNotes.save(release)
         return  saveNotes.save(flush: true)
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

    def findReleaseNotesByRelease(id){
        def release = esewaReleaseService.getById(id)
        return release.releaseNotes
    }
}


