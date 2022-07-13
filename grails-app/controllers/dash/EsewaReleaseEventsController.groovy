package dash

import grails.transaction.Transactional

@Transactional
class EsewaReleaseEventsController {
EsewaReleaseEventsService esewaReleaseEventsService
      def index() {
          params.max = params.max ? params.int('max') : 10
          if (params.offset == null) {
              params << [offset: 0]
          }
          [esewaReleaseEventsInstanceList: EsewaReleaseEvents.list(max: params.int('max'), offset: params.offset), esewaReleaseEventsInstanceCount: EsewaReleaseEvents.count()]
    }

    def show(Integer id) {
        def response = esewaReleaseEventsService.getById(id)
        if (!response) {
            redirect(controller: "esewaReleaseEvents", action: "index")
        } else {
            [esewaReleaseEvents: response]
        }
    }

    def create() {
        [esewaReleaseEvents: flash.redirectParams]
    }
    @Transactional
    def save() {
        esewaReleaseEventsService.saveData(params)
        redirect(controller: "esewaReleaseEvents", action: "index")
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [esewaReleaseEvents: flash.redirectParams]
        } else {
            def response = esewaReleaseEventsService.getById(id)
            if (!response) {
                redirect(controller: "esewaReleaseEvents", action: "index")
            } else {
                [esewaReleaseEvents: response]
            }
        }
    }

    @Transactional
    def update() {
        def response = esewaReleaseEventsService.getById(params.id)
        if (!response) {
            redirect(controller: "esewaReleaseEvents", action: "index")
        } else {
            esewaReleaseEventsService.update(response, params)
            redirect(controller: "esewaReleaseEvents", action: "index")
        }
    }

    @Transactional
    def delete(Integer id) {
        def response = esewaReleaseEventsService.getById(id)
        if (!response) {
            redirect(controller: "esewaReleaseEvents", action: "index")
        } else {
            response = esewaReleaseEventsService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "esewaReleaseEvents", action: "index")
            }
        }
    }

}
