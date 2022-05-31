package dash

class ReleaseEnvironmentController {

    ReleaseEnvironmentService releaseEnvironmentService

    def index(){
        def releaseEnvironmentList = releaseEnvironmentService.saveList(params)
        [releaseEnvironmentList:releaseEnvironmentList]
    }

    def saveData(){
        releaseEnvironmentService.saveData(params)
        redirect(controller: "releaseEnvironment", action: "index")
    }

    def create() {
        [releaseEnvironment:flash.redirectParams]
    }

    def update(){
        def response = releaseEnvironmentService.getById(params.id)
        if (!response){
            redirect(controller: "releaseEnvironment", action: "index")
        }else{
            releaseEnvironmentService.update(response, params)
            redirect(controller: "releaseEnvironment", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [releaseEnvironment: flash.redirectParams]
        } else {
            def response = releaseEnvironmentService.getById(id)
            if (!response) {
                redirect(controller: "releaseEnvironment", action: "index")
            } else {
                [releaseEnvironment: response]
            }
        }
    }

    def delete(Integer id) {
        def response = releaseEnvironmentService.getById(id)
        if (!response){
            redirect(controller: "releaseEnvironment", action: "index")
        }else{
            response = releaseEnvironmentService.delete(response)
            if (!response){
                render "unable.to.delete"
            }else{
                redirect(controller: "releaseEnvironment", action: "index")
            }
        }
    }
}
