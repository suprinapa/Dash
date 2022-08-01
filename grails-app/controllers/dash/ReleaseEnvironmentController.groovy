package dash

class ReleaseEnvironmentController {

    ReleaseEnvironmentService releaseEnvironmentService

    def index(){
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        def c = ReleaseEnvironment.createCriteria()
        def results = c.list(max: params.int('max'), offset: params.offset) {
            and {
                order('esewaEnvironment', 'desc')
            }
        }
        [releaseEnvironmentInstanceList: results, releaseEnvironmentInstanceCount: ReleaseEnvironment.count()]
    }
    def show(Integer id) {
        def response = releaseEnvironmentService.getById(id)
        if (!response){
            redirect(controller: "releaseEnvironment", action: "index")
        }else{
            [releaseEnvironment: response]
        }
    }

    def findEnvironmentByEsewaRelease(Integer id) {
        def response = releaseEnvironmentService.findEnvironmentByEsewaRelease(id)
        if (!response){
           flash.message = "Add Environment!"
        }else{
            [releaseEnvironment: response]
        }
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
