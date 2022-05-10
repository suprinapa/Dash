package dash

class EsewaReleaseController {

    EsewaReleaseService esewaReleaseService

    def index() {
        def esewaReleaseList = esewaReleaseService.saveList(params)
        [esewaReleaseList: esewaReleaseList]
    }

    def saveData() {
        esewaReleaseService.saveData(params)
        redirect(controller: "esewaRelease", action: "index")
    }

    def search() {
        def response = esewaReleaseService.search()
        render response
    }

    def create() {
        [esewaRelease: flash.redirectParams]
    }

    def update() {
        def response = esewaReleaseService.getById(params.id)
        if (!response) {
            redirect(controller: "esewaRelease", action: "index")
        } else {
            esewaReleaseService.update(response, params)
            redirect(controller: "esewaRelease", action: "index")
        }

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
