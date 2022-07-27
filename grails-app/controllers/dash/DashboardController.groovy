package dash

class DashboardController {
    def index() {
        def countOfInProgress = EsewaRelease.countByReleaseStatus("In_Progress" as ReleaseStatus)
        render(view: 'index', model: [countOfInProgress: countOfInProgress])
        def countOfUnReleased = EsewaRelease.countByReleaseStatus("UnReleased" as ReleaseStatus)
        render(view: 'index', model: [countOfUnReleased: countOfUnReleased])
        def countOfReleased = EsewaRelease.countByReleaseStatus("Released" as ReleaseStatus)
        render(view: 'index', model: [countOfReleased: countOfReleased])

        /*   def a =EsewaRelease.list()
       def response = a.releaseStatus.size()
        render (view: 'index', model:[response:response])*/

    }
}
