package dash

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional
class EsewaReleaseController {
EsewaReleaseService esewaReleaseService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        params.max = params.max ? params.int('max') : 10
        if(params.offset == null){
            params << [offset: 0]
        }
        [esewaReleaseInstanceList: EsewaRelease.list(max: params.int('max'), offset: params.offset), esewaReleaseInstanceCount: EsewaRelease.count()]
    }

    def searchByDate(){
        def criteria = EsewaRelease.createCriteria()
        //fetching data based on the criteria
        List<EsewaRelease> dateList = criteria.list {
            ge("startDate", 2022-06-16)
        } as List<EsewaRelease>
        [dateList:dateList]
    }

    def search() {
        def searchText = params.searchText
        def colName = params.colName
        def esewaReleaseList
        def esewaReleaseCount
        params.max = params.max ? params.int('max') : 10
        if (searchText) {
            def rel = EsewaRelease.createCriteria()
            List<EsewaRelease> releasesList = rel.list(max: params.max, offset: params.offset) {
                eq(colName, searchText)
            } as List<EsewaRelease>

            esewaReleaseList = releasesList

            if(colName == "releaseName") {
                esewaReleaseCount = EsewaRelease.where {
                    releaseName == searchText
                }.count()
            }
            else if(colName == "releaseVersion") {
                esewaReleaseCount = EsewaRelease.where {
                    releaseVersion == searchText
                }.count()
            }
        } else {
//            params << [sort: 'colName']
            esewaReleaseList = EsewaRelease.list(params)
            esewaReleaseCount = EsewaRelease.count()
        }
        render(template: 'grid', model: [esewaReleaseInstanceList: esewaReleaseList, esewaReleaseInstanceCount: esewaReleaseCount, searchText: searchText])
    }

    def show(EsewaRelease esewaReleaseInstance) {
        respond esewaReleaseInstance
    }

    def create() {
        [esewaRelease: flash.redirectParams]
    }

    @Transactional
    def save() {
       new EsewaRelease(params)
               .addToEsewaComponents(EsewaComponents.findById(params.esewaComponents as Long))
                .addToReleaseEnvironment(ReleaseEnvironment.findById(params.releaseEnvironment as Long))
               .addToEsewaReleaseEvents(EsewaReleaseEvents.findById(params.esewaEvents as Long))
               .save(flush: true, failOnError: true)
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
