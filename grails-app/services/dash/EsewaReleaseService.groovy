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

    def saveData(GrailsParameterMap params) {
        EsewaRelease esewaRelease = new EsewaRelease(params)
        if (esewaRelease.validate()) {
            esewaRelease.save(flush: true)
        }
    }

    def getById(Serializable id) {
        return EsewaRelease.get(id)
    }

    def update(){
        // retrieve the members from the database
        def esewaRelease = getById(15)
        // update properties in the employee
        esewaRelease.environment = "Prod"
        // update the database
        esewaRelease.save(flush: true, failOnError: true)
    }
    def edit(){


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
/*        esewaRelease.id = 1
        esewaRelease.releaseName = "Task1"
        esewaRelease.releaseVersion = "2.3.1"
        esewaRelease.environment = "RC"
        esewaRelease.startDate = new Date()
        esewaRelease.endDate = new Date() + 7*/
