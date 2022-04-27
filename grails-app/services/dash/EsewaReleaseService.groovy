package dash

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class EsewaReleaseService {

    def list()
    {
        List<EsewaRelease> list = EsewaRelease.list()
        println(list)
    }

    def saveData(GrailsParameterMap params) {
        EsewaRelease esewaRelease = new EsewaRelease(params)
        esewaRelease.id = 1
        esewaRelease.releaseName = "Task1"
        esewaRelease.releaseVersion = "2.3.1"
        esewaRelease.environment = "RC"
        esewaRelease.startDate = new Date()
        esewaRelease.endDate = new Date() + 7
        if (esewaRelease.validate()) {
            esewaRelease.save(flush: true)
        }
    }

    def create(){
    }

    def update(){

    }
    def edit(){

    }






}
