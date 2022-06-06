package dash

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT
import static org.springframework.http.HttpStatus.OK

class ReleaseNotesController {

    ReleaseNotesService releaseNotesService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ReleaseNotes.list(params), model: [releaseNotesCount: ReleaseNotes.count()]
    }

    def show(ReleaseNotes ReleaseNotesInstance) {
        respond ReleaseNotesInstance
    }

    def create() {
        respond new ReleaseNotes(params)
    }

    def save(ReleaseNotes releaseNotesInstance) {
        releaseNotesService.saveData(releaseNotesInstance)
        if (releaseNotesInstance == null) {
            notFound()
            return
        }

        if (releaseNotesInstance.hasErrors()) {
            releaseNotesInstance.errors
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'releaseNotes.label', default: 'ReleaseNotes'), releaseNotesInstance.id])
                redirect releaseNotesInstance
            }
            '*' { respond releaseNotesInstance, [status: CREATED] }
        }

    }

    def edit(ReleaseNotes releaseNotesInstance) {
        respond releaseNotesInstance
    }

    def update(ReleaseNotes releaseNotesInstance) {
        releaseNotesService.update(releaseNotesInstance)
        if (releaseNotesInstance == null) {
            notFound()
            return
        }

        if (releaseNotesInstance.hasErrors()) {
            releaseNotesInstance.errors
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'releaseNotes.label', default: 'ReleaseNotes'), releaseNotesInstance.id])
                redirect releaseNotesInstance
            }
            '*' { respond releaseNotesInstance, [status: OK] }
        }
    }

    def delete(ReleaseNotes releaseNotesInstance) {
        releaseNotesService.delete(releaseNotesInstance)
        if (releaseNotesInstance == null) {
            notFound()
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'releaseNotes.label', default: 'ReleaseNotes'), releaseNotesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }


    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseNotes.label', default: 'ReleaseNotes'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
