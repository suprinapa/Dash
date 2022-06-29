package dash

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EsewaReleaseEventsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EsewaReleaseEvents.list(params), model:[esewaReleaseEventsInstanceCount: EsewaReleaseEvents.count()]
    }

    def show(EsewaReleaseEvents esewaReleaseEventsInstance) {
        respond esewaReleaseEventsInstance
    }

    def create() {
        respond new EsewaReleaseEvents(params)
    }

    @Transactional
    def save(EsewaReleaseEvents esewaReleaseEventsInstance) {
        if (esewaReleaseEventsInstance == null) {
            notFound()
            return
        }

        if (esewaReleaseEventsInstance.hasErrors()) {
            respond esewaReleaseEventsInstance.errors, view:'create'
            return
        }

        esewaReleaseEventsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents'), esewaReleaseEventsInstance.id])
                redirect esewaReleaseEventsInstance
            }
            '*' { respond esewaReleaseEventsInstance, [status: CREATED] }
        }
    }

    def edit(EsewaReleaseEvents esewaReleaseEventsInstance) {
        respond esewaReleaseEventsInstance
    }

    @Transactional
    def update(EsewaReleaseEvents esewaReleaseEventsInstance) {
        if (esewaReleaseEventsInstance == null) {
            notFound()
            return
        }

        if (esewaReleaseEventsInstance.hasErrors()) {
            respond esewaReleaseEventsInstance.errors, view:'edit'
            return
        }

        esewaReleaseEventsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EsewaReleaseEvents.label', default: 'EsewaReleaseEvents'), esewaReleaseEventsInstance.id])
                redirect esewaReleaseEventsInstance
            }
            '*'{ respond esewaReleaseEventsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EsewaReleaseEvents esewaReleaseEventsInstance) {

        if (esewaReleaseEventsInstance == null) {
            notFound()
            return
        }

        esewaReleaseEventsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EsewaReleaseEvents.label', default: 'EsewaReleaseEvents'), esewaReleaseEventsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

}
