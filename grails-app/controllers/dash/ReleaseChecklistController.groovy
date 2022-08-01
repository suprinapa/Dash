package dash

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
//            flash.message = "No CheckList present!"
            redirect(controller: "releaseChecklist", action: "index")
        } else {
            [releaseChecklist: response]
        }
    }

    def findReleaseChecklistByRelease(Integer id) {
        def response = releaseChecklistService.findReleaseChecklistByRelease(id)
        if (!response) {
            flash.message = "No CheckList present!"
//            redirect(controller: "releaseChecklist", action: "index")
        } else {
            [releaseChecklist: response]
        }
    }

    def create() {
        [releaseChecklist: flash.redirectParams]
    }

    def add(){
        releaseChecklistService.addData(params)
        redirect(controller: "releaseChecklist", action: "index")
    }


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


    def update() {
        def response = releaseChecklistService.getById(params.id)
        if (!response) {
            redirect(controller: "releaseChecklist", action: "index")
        } else {
            releaseChecklistService.update(response, params)
            redirect(controller: "releaseChecklist", action: "index")
        }
    }
    

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
