package dash

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EsewaReleaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
    params.max = params.max ? params.int('max') : 10
    [esewaReleaseInstanceList: EsewaRelease.list(max:params.int('max'),offset: 0), esewaReleaseInstanceCount: EsewaRelease.count()]
/*    def model = [esewaReleaseInstanceList: EsewaRelease.list(params) ,esewaReleaseInstanceCount: EsewaRelease.count()]
    render(view: 'index', model: model)*/
    }

    def grid ={
        params.max = params.max ? params.int('max') : 10
        if(params.colValue != null){
            List<EsewaRelease> releaseList = privateSearchMethod(params.max, params.offset)
            render(template: 'grid', model: [esewaReleaseInstanceList: releaseList, esewaReleaseInstanceCount: releaseList.size()])
        }
        render(template: 'grid', model: [esewaReleaseInstanceList: EsewaRelease.list(params), esewaReleaseInstanceCount: EsewaRelease.count()])
    }

    def search() {
        List<EsewaRelease> releasesList = privateSearchMethod(10,0)
        render(view: 'index',model: [esewaReleaseInstanceList: releasesList , esewaReleaseInstanceCount: releasesList.size(), searchQuery: params?.colValue])
    }

         def searchByDate() {
    }

    private def privateSearchMethod(max, offset){
        def rel = EsewaRelease.createCriteria()
        List<EsewaRelease> releasesList = rel.list(max: max, offset: offset) {
            eq('releaseName', params?.colValue)
        } as List<EsewaRelease>
        return releasesList;
    }

    def show(EsewaRelease esewaReleaseInstance) {
        respond esewaReleaseInstance
    }

    def create() {
        respond new EsewaRelease(params)
    }

    @Transactional
    def save(EsewaRelease esewaReleaseInstance) {
        if (esewaReleaseInstance == null) {
            notFound()
            return
        }

        if (esewaReleaseInstance.hasErrors()) {
            respond esewaReleaseInstance.errors, view:'create'
            return
        }

        esewaReleaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'esewaRelease.label', default: 'EsewaRelease'), esewaReleaseInstance.id])
                redirect esewaReleaseInstance
            }
            '*' { respond esewaReleaseInstance, [status: CREATED] }
        }
    }

    def edit(EsewaRelease esewaReleaseInstance) {
        respond esewaReleaseInstance
    }

    @Transactional
    def update(EsewaRelease esewaReleaseInstance) {
        if (esewaReleaseInstance == null) {
            notFound()
            return
        }

        if (esewaReleaseInstance.hasErrors()) {
            respond esewaReleaseInstance.errors, view:'edit'
            return
        }

        esewaReleaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EsewaRelease.label', default: 'EsewaRelease'), esewaReleaseInstance.id])
                redirect esewaReleaseInstance
            }
            '*'{ respond esewaReleaseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EsewaRelease esewaReleaseInstance) {

        if (esewaReleaseInstance == null) {
            notFound()
            return
        }

        esewaReleaseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EsewaRelease.label', default: 'EsewaRelease'), esewaReleaseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'esewaRelease.label', default: 'EsewaRelease'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
