package dash

import grails.transaction.Transactional
class ReleaseChecklistController {
    ReleaseChecklistService releaseChecklistService

    def index() {
        params.max = params.max ? params.int('max') : 10
        if (params.offset == null) {
            params << [offset: 0]
        }
        [releaseChecklistList: ReleaseChecklist.list(max: params.int('max'), offset: params.offset), releaseChecklistCount: ReleaseChecklist.count()]
    }

    def show(Integer id) {
        def response = releaseChecklistService.getById(id)
        if (!response) {
            redirect(controller: "releaseChecklist", action: "index")
        } else {
            [releaseChecklist: response]
        }
    }

    def create() {
        [releaseChecklist: flash.redirectParams]
    }

    @Transactional
    def save() {
        releaseChecklistService.saveData(params)
        redirect(controller: "releaseChecklist", action: "index")
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [releaseChecklist: flash.redirectParams]
        } else {
            def response = releaseChecklistService.getById(id)
            if (!response) {
                redirect(controller: "releaseChecklist", action: "index")
            } else {
                [releaseChecklist: response]
            }
        }
    }

    @Transactional
    def update() {
        def response = releaseChecklistService.getById(params.id)
        if (!response) {
            redirect(controller: "releaseChecklist", action: "index")
        } else {
            releaseChecklistService.update(response, params)
            redirect(controller: "releaseChecklist", action: "index")
        }
    }
    
    @Transactional
    def delete(Integer id) {
        def response = releaseChecklistService.getById(id)
        if (!response) {
            redirect(controller: "releaseChecklist", action: "index")
        } else {
            response = releaseChecklistService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "releaseChecklist", action: "index")
            }
        }
    }
}
