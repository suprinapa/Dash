package dash

class EsewaComponentsController {

    EsewaComponentsService esewaComponentsService

    def index() {
        def esewaComponentsList = esewaComponentsService.saveList(params)
        [esewaComponentsList: esewaComponentsList]
    }

    def saveData() {
        esewaComponentsService.saveData(params)
        redirect(controller: "esewaComponents", action: "index")
    }

    def create() {
        [esewaComponents: flash.redirectParams]
    }

    def show(Integer id) {
        def response = esewaComponentsService.getById(id)
        if (!response){
            redirect(controller: "esewaComponents", action: "index")
        }else{
            [esewaComponents: response]
        }
    }

    def update() {
        def response = esewaComponentsService.getById(params.id)
        if (!response) {
            redirect(controller: "esewaComponents", action: "index")
        } else {
            esewaComponentsService.update(response, params)
            redirect(controller: "esewaComponents", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [esewaComponents: flash.redirectParams]
        } else {
            def response = esewaComponentsService.getById(id)
            if (!response) {
                redirect(controller: "esewaComponents", action: "index")
            } else {
                [esewaComponents: response]
            }
        }
    }

    def delete(Integer id) {
        def response = esewaComponentsService.getById(id)
        if (!response) {
            redirect(controller: "esewaComponents", action: "index")
        } else {
            response = esewaComponentsService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "esewaComponents", action: "index")
            }
        }
    }
}
