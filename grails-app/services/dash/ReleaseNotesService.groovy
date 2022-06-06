package dash

import grails.transaction.Transactional

@Transactional
class ReleaseNotesService {

    def saveData(ReleaseNotes releaseNotesInstance) {
        releaseNotesInstance.save flush: true
    }

    def update(ReleaseNotes releaseNotesInstance) {
        releaseNotesInstance.save flush: true
    }

    def getById(Serializable id) {
        return ReleaseNotes.get(id)
    }

    def delete(ReleaseNotes releaseNotesInstance) {
        releaseNotesInstance.delete flush: true
    }
}
