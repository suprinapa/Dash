package dash



import grails.test.mixin.*
import spock.lang.*

@TestFor(EsewaReleaseController)
@Mock(EsewaRelease)
class EsewaReleaseControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.esewaReleaseInstanceList
            model.esewaReleaseInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.esewaReleaseInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def esewaRelease = new EsewaRelease()
            esewaRelease.validate()
            controller.save(esewaRelease)

        then:"The create view is rendered again with the correct model"
            model.esewaReleaseInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            esewaRelease = new EsewaRelease(params)

            controller.save(esewaRelease)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/esewaRelease/show/1'
            controller.flash.message != null
            EsewaRelease.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def esewaRelease = new EsewaRelease(params)
            controller.show(esewaRelease)

        then:"A model is populated containing the domain instance"
            model.esewaReleaseInstance == esewaRelease
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def esewaRelease = new EsewaRelease(params)
            controller.edit(esewaRelease)

        then:"A model is populated containing the domain instance"
            model.esewaReleaseInstance == esewaRelease
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/esewaRelease/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def esewaRelease = new EsewaRelease()
            esewaRelease.validate()
            controller.update(esewaRelease)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.esewaReleaseInstance == esewaRelease

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            esewaRelease = new EsewaRelease(params).save(flush: true)
            controller.update(esewaRelease)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/esewaRelease/show/$esewaRelease.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/esewaRelease/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def esewaRelease = new EsewaRelease(params).save(flush: true)

        then:"It exists"
            EsewaRelease.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(esewaRelease)

        then:"The instance is deleted"
            EsewaRelease.count() == 0
            response.redirectedUrl == '/esewaRelease/index'
            flash.message != null
    }
}
