package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaReleaseController {
    EsewaReleaseService esewaReleaseService
    EsewaReleaseEventsService esewaReleaseEventsService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        def c = EsewaRelease.createCriteria()
        def results = c.list(max: params.int('max'), offset: params.offset) {
            and {
                order('createdDate', 'desc')
            }
        }
        [esewaReleaseInstanceList: results, esewaReleaseInstanceCount: EsewaRelease.count()]
    }

    /*def searchByDate() {
        def criteria = EsewaRelease.createCriteria()
        //fetching data based on the criteria
        List<EsewaRelease> dateList = criteria.list {
            ge("startDate", 2022 - 06 - 16)
        } as List<EsewaRelease>
        [dateList: dateList]
    }*/

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
            def c = EsewaRelease.createCriteria()
            def results = c.list(max: params.int('max'), offset: params.offset) {
                and {
                    order('createdDate', 'desc')
                }
            }
            esewaReleaseList = results
            esewaReleaseCount = EsewaRelease.count()
        }
        render(template: 'grid', model: [esewaReleaseInstanceList: esewaReleaseList, esewaReleaseInstanceCount: esewaReleaseCount, searchText: searchText])
    }

    def show(Integer id) {
        def response = esewaReleaseService.getById(id)
        def release = esewaReleaseEventsService.getByRelease(response)
        if (!response) {
            // redirect(controller: "esewaRelease", action: "index")
        } else {
            [esewaRelease: response, esewaEvents: release.esewaEvents, approvedBy:release.approvedBy]
        }
    }

    def create() {
        [esewaRelease: flash.redirectParams]
    }

    def save() {
        esewaReleaseService.saveData(params)
        redirect(controller: "esewaRelease", action: "index")
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [esewaRelease: flash.redirectParams]
        }
        def response = esewaReleaseService.getById(id)
        if (!response) {
//                redirect(controller: "esewaRelease", action: "index")
        } else {
            [esewaRelease: response]
        }
    }

    def update() {
        def dynamicParams = request.JSON;
        GrailsParameterMap objparams = new GrailsParameterMap(request);
        objparams.put("id",dynamicParams.id)
        objparams.put("releaseName",dynamicParams.releaseName)
        objparams.put("releaseVersion",dynamicParams.releaseVersion)
        objparams.put("parentRelease",dynamicParams.parentRelease)
        objparams.put("startDate",dynamicParams.startDate)
        objparams.put("startDate_day",dynamicParams.startDate_day)
        objparams.put("startDate_month",dynamicParams.startDate_month)
        objparams.put("startDate_year",dynamicParams.startDate_year)
        objparams.put("endDate",dynamicParams.endDate)
        objparams.put("endDate_day",dynamicParams.endDate_day)
        objparams.put("endDate_month",dynamicParams.endDate_month)
        objparams.put("endDate_year",dynamicParams.endDate_year)
        objparams.put("releaseType",dynamicParams.releaseType)
        def response = esewaReleaseService.getById(objparams.id)
        if (!response) {
            redirect(controller: "esewaRelease", action: "index")
        } else {
            esewaReleaseService.update(response, objparams)
            redirect(controller: "esewaRelease", action: "index", id:objparams.id)

        }
    }

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
