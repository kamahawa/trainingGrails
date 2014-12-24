package webshoptrain


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MobilePhoneController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MobilePhone.list(params), model: [mobilePhoneInstanceCount: MobilePhone.count()]
    }

    def show(MobilePhone mobilePhoneInstance) {
        respond mobilePhoneInstance
    }

    def create() {
        respond new MobilePhone(params)
    }

    @Transactional
    def save(MobilePhone mobilePhoneInstance) {
        if (mobilePhoneInstance == null) {
            notFound()
            return
        }

        if (mobilePhoneInstance.hasErrors()) {
            respond mobilePhoneInstance.errors, view: 'create'
            return
        }

        mobilePhoneInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), mobilePhoneInstance.id])
                redirect mobilePhoneInstance
            }
            '*' { respond mobilePhoneInstance, [status: CREATED] }
        }
    }

    def edit(MobilePhone mobilePhoneInstance) {
        respond mobilePhoneInstance
    }

    @Transactional
    def update(MobilePhone mobilePhoneInstance) {
        if (mobilePhoneInstance == null) {
            notFound()
            return
        }

        if (mobilePhoneInstance.hasErrors()) {
            respond mobilePhoneInstance.errors, view: 'edit'
            return
        }

        mobilePhoneInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MobilePhone.label', default: 'MobilePhone'), mobilePhoneInstance.id])
                redirect mobilePhoneInstance
            }
            '*' { respond mobilePhoneInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MobilePhone mobilePhoneInstance) {

        if (mobilePhoneInstance == null) {
            notFound()
            return
        }

        mobilePhoneInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MobilePhone.label', default: 'MobilePhone'), mobilePhoneInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobilePhone.label', default: 'MobilePhone'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
