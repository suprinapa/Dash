package dash

class EsewaEventsController {

    EsewaEventsService esewaEventsService
    EsewaReleaseService esewaReleaseService
    EsewaReleaseEventsService esewaReleaseEventsService

    def index() {
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        [esewaEventsList: EsewaEvents.list(max: params.int('max'), offset: params.offset), esewaEventsCount: EsewaEvents.count()]
    }

    def saveData() {
        esewaEventsService.saveData(params)
        redirect(controller: "esewaEvents", action: "findReleaseByEvents", id:params.releaseId  )
    }

    def create() {
        [esewaEvents: flash.redirectParams]
    }

    def show(Integer id) {
        def response = esewaEventsService.getById(id)
        if (!response){
            redirect(controller: "esewaEvents", action: "index")
        }else{
            [esewaEvents: response]
        }
//        def response = esewaEventsService.getById(id)
//        if (!response){
//            redirect(controller: "esewaEvents", action: "index")
//        }else{
//            [esewaEvents: response]
//        }
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


    def findReleaseByEvents(Integer id){
            def response = esewaReleaseService.getById(id)
            def release = esewaReleaseEventsService.getByRelease(response)
            if (!release) {
                flash.message = "No Events created!"
            } else {
//                [esewaEvents: release.esewaEvents,esewaRelease: response,approvedBy:release.approvedBy]
                [esewaEvents: release,esewaRelease: response]
            }
    }
}
