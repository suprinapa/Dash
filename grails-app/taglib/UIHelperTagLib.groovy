

class UIHelperTagLib {

    static namespace = "UIHelper"


    def memberActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown")
        out << '<div class="dropdown-menu">'
        out << "</div></li>"
    }

    def leftNavigation = { attrs, body ->
        List navigations = [
                [controller: "esewaRelease", action: "index", name: "esewa.Release"],
                [controller: "esewaEvents", action: "index", name: "esewa.Events"],
                [controller: "releaseEnvironment", action: "index", name: "release.Environment"],
        ]

        navigations.each { menu ->
            out << '<li class="     list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }

}
