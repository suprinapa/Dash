package dash

class EsewaReleaseController {

EsewaReleaseService esewaReleaseService

    def index(){
        def list = esewaReleaseService.list(sort:"id", order:"asc")
        [list:list]
    }

    def saveData(){
        def response = esewaReleaseService.saveData(params)
        [response:response]
    }

}
