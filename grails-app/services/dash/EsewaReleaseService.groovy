package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional/*(isolation = I)*/
class EsewaReleaseService {
    def  saveData(GrailsParameterMap params){
        def esewaComponents = EsewaComponents.findAllByIdInList(params.esewaComponents*.toLong())
        def releaseEnvironments = ReleaseEnvironment.findAllByIdInList(params.releaseEnvironment*.toLong())
        def esewaReleaseEvents = EsewaReleaseEvents.findAllByIdInList(params.esewaReleaseEvents*.toLong())
        def esewaRelease = new EsewaRelease(params)
        esewaComponents.forEach({e-> esewaRelease.addToEsewaComponents(e)})
        releaseEnvironments.forEach({f-> esewaRelease.addToReleaseEnvironment(f)})
        esewaReleaseEvents.forEach({g-> esewaRelease.addToEsewaReleaseEvents(g)})
        def saveRelease = esewaRelease.save(flush: true, failOnError: true)

        ReleaseNotes releaseNotes = new ReleaseNotes()
        releaseNotes.releaseNotesDescription = params.releaseNotesDescription
     /*   releaseNotes.ticketPriority = TicketPriority.valueOf(params.ticketPriority)
        releaseNotes.ticketType = TicketType.valueOf(params.ticketType)*/
        releaseNotes.setEsewaRelease(saveRelease)
        releaseNotes.save(flush: true, failOnError: true)

        ReleaseChecklist releaseChecklist = new ReleaseChecklist()
        releaseChecklist.releaseCheckListDescription = params.releaseCheckListDescription
        releaseChecklist.setEsewaRelease(saveRelease)
        releaseChecklist.save(flush: true, failOnError: true)
    }
    def getById(Serializable id) {
        return EsewaRelease.get(id)
    }
   def update(EsewaRelease esewaRelease, GrailsParameterMap params){
       def esewaComponents = EsewaComponents.findAllByIdInList(params.esewaComponents*.toLong())
       def releaseEnvironments = ReleaseEnvironment.findAllByIdInList(params.releaseEnvironment*.toLong())
       def esewaReleaseEvents = EsewaReleaseEvents.findAllByIdInList(params.esewaReleaseEvents*.toLong())
        def releaseNotes = ReleaseNotes.findAllByIdInList(params.releaseNotes*.toLong())
       //def releaseChecklist = ReleaseChecklist.findAllByIdInList(params.esewaReleaseEvents*.toLong())
       esewaRelease.setEsewaComponents(esewaComponents as Set<EsewaComponents>)
       esewaRelease.setReleaseEnvironment(releaseEnvironments as Set<ReleaseEnvironment>)
       //esewaRelease.setReleaseNotes(releaseNotes as Set<ReleaseNotes>)
       esewaRelease.setEsewaReleaseEvents(esewaReleaseEvents as Set<EsewaReleaseEvents>)
       esewaRelease.properties = params
       esewaRelease.save(flush: true, failOnError: true)
   }

    Boolean delete(EsewaRelease esewaRelease) {
        try {
            esewaRelease.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
