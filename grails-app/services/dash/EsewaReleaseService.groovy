package dash

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

/*(isolation = I)*/
class EsewaReleaseService {
    def saveData(GrailsParameterMap params) {
        def esewaComponents = EsewaComponents.findAllByIdInList(params.esewaComponents*.toLong())
        def releaseEnvironments = ReleaseEnvironment.findAllByIdInList(params.releaseEnvironment*.toLong())
        def esewaEvents = EsewaEvents.findAllByIdInList(params.esewaReleaseEvents*.toLong())
        params.createdDate = new Date()
        def esewaRelease = new EsewaRelease(params)
        esewaComponents.forEach({ e -> esewaRelease.addToEsewaComponents(e) })
        releaseEnvironments.forEach({ f -> esewaRelease.addToReleaseEnvironment(f) })
        def saveRelease = esewaRelease.save(flush: true, failOnError: true)
        esewaEvents.forEach({ e ->
            EsewaReleaseEvents esewaReleaseEvents = new EsewaReleaseEvents()
            esewaReleaseEvents.setEsewaRelease(saveRelease);
            esewaReleaseEvents.setCreatedDate(new Date())
            esewaReleaseEvents.setApprovedBy(params.ApprovedBy)
            esewaReleaseEvents.setApprovedDate(new Date())
            esewaReleaseEvents.setEsewaEvents(e)
            esewaReleaseEvents.save(flush: true, failOnError: true)
        })
        ReleaseNotes releaseNotes = new ReleaseNotes()
        if(params.releaseNotesDescription!= null && params.releaseNotesDescription != "") {
            releaseNotes.releaseNotesDescription = params.releaseNotesDescription
            releaseNotes.setEsewaRelease(saveRelease)
            releaseNotes.save(flush: true, failOnError: true)
        }
        ReleaseChecklist releaseChecklist = new ReleaseChecklist()
        if(params.releaseCheckListDescription!= null && params.releaseCheckListDescription != "") {
            releaseChecklist.releaseCheckListDescription = params.releaseCheckListDescription
            releaseChecklist.setEsewaRelease(saveRelease)
            releaseChecklist.save(flush: true, failOnError: true)
        }
    }

    def getById(Serializable id) {
        return EsewaRelease.get(id)
    }

    def update(EsewaRelease esewaRelease, GrailsParameterMap params) {
        def esewaComponents = EsewaComponents.findAllByIdInList(params.esewaComponents*.toLong())
        def releaseEnvironments = ReleaseEnvironment.findAllByIdInList(params.releaseEnvironment*.toLong())
        def esewaEvents = EsewaEvents.findAllByIdInList(params.esewaReleaseEvents*.toLong())
        esewaRelease.setEsewaComponents(esewaComponents as Set<EsewaComponents>)
        esewaRelease.setReleaseEnvironment(releaseEnvironments as Set<ReleaseEnvironment>)

        esewaEvents.forEach({ e ->
            EsewaReleaseEvents esewaReleaseEvents = new EsewaReleaseEvents()
            esewaReleaseEvents.setEsewaRelease(esewaRelease);
            esewaReleaseEvents.setCreatedDate(new Date())
            esewaReleaseEvents.setApprovedBy(params.ApprovedBy)
            esewaReleaseEvents.setApprovedDate(new Date())
            esewaReleaseEvents.setEsewaEvents(e)
            esewaReleaseEvents.save(flush: true, failOnError: true)
        })
        esewaRelease.properties = params
        esewaRelease.save(flush: true, failOnError: true)
    }

    Boolean delete(EsewaRelease esewaRelease) {
        try {
            def esewaEvents = EsewaReleaseEvents.findAllByEsewaRelease(esewaRelease)
            if(esewaEvents != null) {
                esewaEvents*.delete(flush: true)
            }
            esewaRelease.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
/*
    def findEventsByEsewaRelease(esewaReleaseId) {
        EsewaReleaseEvents.getByEsewaReleaseId(esewaReleaseId);
    }*/
}
