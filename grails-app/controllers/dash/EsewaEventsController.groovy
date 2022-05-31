package dash

class EsewaEventsController {

    EsewaEventsService esewaEventsService

    def index() {
        def esewaEventsList = EsewaEvents.list(params)
        [esewaEventsList: esewaEventsList]
    }

    def saveData() {
        esewaEventsService.saveData(params)
        redirect(controller: "esewaEvents", action: "index")
    }

    def create() {
        [esewaEvents: flash.redirectParams]
    }

    def show(EsewaEvents esewaEvents) {
        respond esewaEvents
    }

    def update() {
        def response = esewaEventsService.getById(params.id)
        if (!response) {
            redirect(controller: "esewaEvents", action: "index")
        } else {
            esewaEventsService.update(response, params)
            redirect(controller: "esewaEvents", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [esweaEvents: flash.redirectParams]
        } else {
            def response = esewaEventsService.getById(id)
            if (!response) {
                redirect(controller: "esewaEvents", action: "index")
            } else {
                [esweaEvents: response]
            }
        }
    }

    def delete(Integer id) {
        def response = esewaEventsService.getById(id)
        if (!response) {
            redirect(controller: "esewaEvents", action: "index")
        } else {
            response = esewaEventsService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "esewaEvents", action: "index")
            }
        }
    }
}
