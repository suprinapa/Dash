package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaReleaseService {

    def list()
    {
        List<EsewaRelease> list = EsewaRelease.list(sort:"id", order:"asc")
        return list
    }

    def search(){


    }

/*    def saveList(GrailsParameterMap params) {
        params.max = params.max ?: 10
        List<EsewaRelease> rList = EsewaRelease.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
        } as List<EsewaRelease>
        return rList
    }*/


    def saveData(GrailsParameterMap params) {
        EsewaRelease esewaRelease = new EsewaRelease(params)
    if (esewaRelease.validate()) {
            return esewaRelease.save(flush: true, failOnError: true)
      }
    }

    def getById(Serializable id) {
        return EsewaRelease.get(id)
    }

    def update(EsewaRelease esewaRelease, GrailsParameterMap params){
        esewaRelease.properties = params
        esewaRelease.save(flush: true, failOnError: true)
    }

    Boolean delete(EsewaRelease esewaRelease) {
        try {
            esewaRelease.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
