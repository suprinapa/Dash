package dash

import grails.transaction.Transactional

@Transactional
class EsewaReleaseController {
    EsewaReleaseService esewaReleaseService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        [esewaReleaseInstanceList: EsewaRelease.list(max: params.int('max'), offset: params.offset), esewaReleaseInstanceCount: EsewaRelease.count()]
    }

    def searchByDate() {
        def criteria = EsewaRelease.createCriteria()
        //fetching data based on the criteria
        List<EsewaRelease> dateList = criteria.list {
            ge("startDate", 2022 - 06 - 16)
        } as List<EsewaRelease>
        [dateList: dateList]
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

            if (colName == "releaseName") {
                esewaReleaseCount = EsewaRelease.where {
                    releaseName == searchText
                }.count()
            } else if (colName == "releaseVersion") {
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

    def show(Integer id) {
        def response = esewaReleaseService.getById(id)
        if (!response) {
            redirect(controller: "esewaRelease", action: "index")
        } else {
            [esewaRelease: response]
        }
    }

    def create() {
        [esewaRelease: flash.redirectParams]
    }

    @Transactional
    def save() {
        esewaReleaseService.saveData(params)
        redirect(controller: "esewaRelease", action: "index")
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [esewaRelease: flash.redirectParams]
        } else {
            def response = esewaReleaseService.getById(id)
            if (!response) {
                redirect(controller: "esewaRelease", action: "index")
            } else {
                [esewaRelease: response]
            }
        }
    }

    @Transactional
    def update() {
        def response = esewaReleaseService.getById(params.id)
        if (!response) {
            redirect(controller: "esewaRelease", action: "index")
        } else {
            esewaReleaseService.update(response, params)
            redirect(controller: "esewaRelease", action: "index")
        }
    }

    @Transactional
    def delete(Integer id) {
        def response = esewaReleaseService.getById(id)
        if (!response) {
            redirect(controller: "esewaRelease", action: "index")
        } else {
            response = esewaReleaseService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "esewaRelease", action: "index")
            }
        }
    }
}
