package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaReleaseService {

    def search(Date createdDate) {
        return EsewaRelease.findAllByCreatedDate(createdDate)
    }

   def saveList(GrailsParameterMap params) {
        params.max = params.max ?: 10
        List<EsewaRelease> rList = EsewaRelease.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
        } as List<EsewaRelease>
        return rList
   }


    def saveData(GrailsParameterMap params) {
        EsewaRelease esewaRelease = new EsewaRelease(params)
            return esewaRelease.save(flush: true, failOnError: true)
    }

  /*  def getByParentId(Serializable id) {
        return EsewaRelease.get(parentRelease)
    }*/

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
