package dash


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EsewaReleaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
    params.max = params.max ? params.int('max') : 10
        if(params.offset == null){
            params << [offset: 0]
        }
    [esewaReleaseInstanceList: EsewaRelease.list(max:params.int('max'),offset: params.offset), esewaReleaseInstanceCount: EsewaRelease.count(), params:params]
    }

    def fetchRelease ={
        params.max = params.max ? params.int('max') : 10
        render(template: 'grid', model: [esewaReleaseInstanceList: EsewaRelease.list(params), esewaReleaseInstanceCount: EsewaRelease.count()])
    }

    def search() {
        def rel = EsewaRelease.createCriteria()
        List<EsewaRelease> releasesList = rel.list() {
            eq('releaseName', params?.colValue)
        } as List<EsewaRelease>
        render (view:'index',model: [esewaReleaseInstanceList: releasesList , esewaReleaseInstanceCount: releasesList.size()])
    }

     def ajaxSearchEsewaRelease(Integer max, Integer offset) {
         def searchText = params.searchText
         def esewaReleaseList
         def esewaReleaseCount
         params.max = params.max ? params.int('max') : 10
         if(searchText){
             def rel = EsewaRelease.createCriteria()
             List<EsewaRelease> releasesList = rel.list(max: params.max, offset:offset) {
                 eq('releaseName', params.searchText)
             } as List<EsewaRelease>
             esewaReleaseList = releasesList

             esewaReleaseCount = EsewaRelease.where {releaseName == searchText}.count()
         }else {
             esewaReleaseList = EsewaRelease.list(params)
             esewaReleaseCount = EsewaRelease.count()
         }

         render (template:'grid',model: [esewaReleaseInstanceList: esewaReleaseList , esewaReleaseInstanceCount: esewaReleaseCount], searchText: searchText)
//         def chList = g.render(template: 'grid', model: [esewaReleaseInstanceList: releasesList, esewaReleaseInstanceCount: releasesList.size()], searchText: searchText)
//         def esewaReleaseList = StringEscapeUtils.escapeJavaScript(chList.toString())
//         render template: 'searchSuccess', model: [esewaReleaseList: esewaReleaseList, params: params]
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
