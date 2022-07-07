package dash
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ReleaseChecklistController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ReleaseChecklist.list(params), model: [releaseChecklistInstanceCount: ReleaseChecklist.count()]
    }

    def show(ReleaseChecklist releaseChecklistInstance) {
        respond releaseChecklistInstance
    }

    def create() {
        respond new ReleaseChecklist(params)
    }

    @Transactional
    def save(ReleaseChecklist releaseChecklistInstance) {
        if (releaseChecklistInstance == null) {
            notFound()
            return
        }

        if (releaseChecklistInstance.hasErrors()) {
            respond releaseChecklistInstance.errors, view:'create'
            return
        }

        releaseChecklistInstance.save flush:true

        request.withFormat {
            form multipartForm{
                flash.message = message(code: 'default.created.message', args: [message(code: 'releaseChecklist.label', default: 'ReleaseChecklist'), releaseChecklistInstance.id])
                redirect releaseChecklistInstance
            }
            '*' { respond releaseChecklistInstance, [status: CREATED] }
        }
    }

    def edit(ReleaseChecklist releaseChecklistInstance) {
        respond releaseChecklistInstance
    }

    @Transactional
    def update(ReleaseChecklist releaseChecklistInstance) {
        if (releaseChecklistInstance == null) {
            notFound()
            return
        }

        if (releaseChecklistInstance.hasErrors()) {
            respond releaseChecklistInstance.errors, view:'edit'
            return
        }

        releaseChecklistInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ReleaseChecklist.label', default: 'ReleaseChecklist'), releaseChecklistInstance.id])
                redirect releaseChecklistInstance
            }
            '*'{ respond releaseChecklistInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ReleaseChecklist releaseChecklistInstance) {

        if (releaseChecklistInstance == null) {
            notFound()
            return
        }

        releaseChecklistInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ReleaseChecklist.label', default: 'ReleaseChecklist'), releaseChecklistInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseChecklist.label', default: 'ReleaseChecklist'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
