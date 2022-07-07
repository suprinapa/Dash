package dash

class EsewaComponentsController {

    EsewaComponentsService esewaComponentsService

    def index() {
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        [esewaComponentsInstanceList: EsewaComponents.list(max: params.int('max'), offset: params.offset), esewaComponentsInstanceCount: EsewaComponents.count()]
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
