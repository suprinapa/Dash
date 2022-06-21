package dash

class DashboardController {
    def index() {
        def CountOfInProgress = EsewaRelease.countByReleaseStatus("In_Progress" as ReleaseStatus)
        println(CountOfInProgress)
        def CountOfUnReleased = EsewaRelease.countByReleaseStatus("UnReleased" as ReleaseStatus)
        println(CountOfUnReleased)
        def CountOfReleased = EsewaRelease.countByReleaseStatus("Released" as ReleaseStatus)
        println(CountOfReleased)

       def a =EsewaRelease.list()
       print(a.releaseStatus.size())
    }
}
