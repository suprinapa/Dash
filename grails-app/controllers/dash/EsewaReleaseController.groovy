package dash

import grails.gorm.PagedResultList

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EsewaReleaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
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

            PagedResultList releases = EsewaRelease.where { releaseName == searchText }.list(max: params.max)
            esewaReleaseCount= releases.totalCount
            render(view: 'index', model: [esewaReleaseInstanceList: esewaReleaseList, esewaReleaseInstanceCount: esewaReleaseCount], searchText: searchText)
        }
        else {
            if (params.offset == null) {
                params << [offset: 0]
            }
            [esewaReleaseInstanceList: EsewaRelease.list(max: params.int('max'), offset: params.offset), esewaReleaseInstanceCount: EsewaRelease.count()]
        }
    }

/*    def getById(Integer id) {
        return EsewaRelease.get(id)
    }
*//*    def fetchRelease ={
        params.max = params.max ? params.int('max') : 10
        render(template: 'grid', model: [esewaReleaseInstanceList: EsewaRelease.list(params), esewaReleaseInstanceCount: EsewaRelease.count()])
    }*/


    def search() {

    }

/*
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
            if(searchText) {
                PagedResultList releases = EsewaRelease.where { colName == searchText }.list(max: 10)
                int totalCount = releases.totalCount
            }
        *//*    else if(colName == "releaseVersion") {
                esewaReleaseCount = EsewaRelease.where {
                    releaseVersion == searchText
                }.count()
            }*//*

        } else {
            esewaReleaseList = EsewaRelease.list(params)
            esewaReleaseCount = EsewaRelease.count()
        }
        render(template: 'grid', model: [esewaReleaseInstanceList: esewaReleaseList, esewaReleaseInstanceCount: esewaReleaseCount], searchText: searchText)
    }*/

/*     def ajaxSearchEsewaRelease(Integer max, Integer offset) {
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

             esewaReleaseCount = EsewaRelease.where {
                 releaseName == searchText
             }.count()
         }else {
             esewaReleaseList = EsewaRelease.list(params)
             esewaReleaseCount = EsewaRelease.count()
         }

         render (template:'grid',model: [esewaReleaseInstanceList: esewaReleaseList , esewaReleaseInstanceCount: esewaReleaseCount], searchText: searchText)
     }*/


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
