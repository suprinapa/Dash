package dash

import grails.transaction.Transactional

class ReleaseNotesController {

    ReleaseNotesService releaseNotesService

     def index() {
         params.max = params.max ? params.int('max') : 10
         if (params.offset == null) {
             params << [offset: 0]
         }
         [releaseNotesList: ReleaseNotes.list(max: params.int('max'), offset: params.offset), releaseNotesCount: ReleaseNotes.count()]
    }

    def show(Integer id) {
        def response = releaseNotesService.getById(id)
        if (!response) {
            redirect(controller: "releaseNotes", action: "index")
        } else {
            [releaseNotes: response]
        }
    }

    def findReleaseNotesByRelease(Integer id) {
        def response = releaseNotesService.findReleaseNotesByRelease(id)
        if (!response) {
            flash.message = "Add Release Notes"
        } else {
            [releaseNotes: response]
        }
    }

    def create() {
        [releaseNotes: flash.redirectParams]
    }

    @Transactional
    def save() {
        releaseNotesService.saveData(params)
        redirect(controller: "releaseNotes", action: "index")
     }

        def edit(Integer id) {
        if (flash.redirectParams) {
            [releaseNotes: flash.redirectParams]
        } else {
            def response = releaseNotesService.getById(id)
            if (!response) {
                redirect(controller: "releaseNotes", action: "index")
            } else {
                [releaseNotes: response]
            }
        }
    }

    @Transactional
    def update() {
        def response = releaseNotesService.getById(params.id)
        if (!response) {
            redirect(controller: "releaseNotes", action: "index")
        } else {
            releaseNotesService.update(response, params)
            redirect(controller: "releaseNotes", action: "index")
        }
    }
    @Transactional
    def delete(Integer id) {
        def response = releaseNotesService.getById(id)
        if (!response) {
            redirect(controller: "releaseNotes", action: "index")
        } else {
            response = releaseNotesService.delete(response)
            if (!response) {
                render "unable.to.delete"
            } else {
                redirect(controller: "releaseNotes", action: "index")
            }
        }
    }

}
