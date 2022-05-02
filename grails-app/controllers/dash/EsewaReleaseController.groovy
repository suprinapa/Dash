package dash

class EsewaReleaseController {

EsewaReleaseService esewaReleaseService

    def index(){
        def list = esewaReleaseService.list()
        [list:list]
    }

    def saveData(){
        def response = esewaReleaseService.saveData(params)
        render response
    }

    def create() {
        [esewaRelease: flash.redirectParams]
    }

    def update(){
        def response = esewaReleaseService.update()
        render response
    }

    def delete() {
      def response = esewaReleaseService.getById(1)
        if (!response){
            redirect(controller: "esewaRelease", action: "index")
        }else{
            response = esewaReleaseService.delete(response)
            if (!response){
                render "unable.to.delete"
            }else{
             render "deleted"
            }
            redirect(controller: "esewaRelease", action: "index")
        }
    }
}
