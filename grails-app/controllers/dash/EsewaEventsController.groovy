package dash

class EsewaEventsController {

    EsewaEventsService esewaEventsService

    def index() {
        def esewaEventsList = esewaEventsService.eventsList()
        [esewaEventsList: esewaEventsList]
    }

    def saveData(){
        esewaEventsService.saveData(params)
        redirect(controller: "esewaEvents", action: "index")
    }

    def create() {
        [esweaEvents: flash.redirectParams]
    }

    def update(){
        def response = esewaEventsService.getById(params.id)
        if (!response){
            redirect(controller: "esewaEvents", action: "index")
        }else{
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
}
