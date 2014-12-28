package webshoptrain


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BillController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Bill.list(params), model: [billInstanceCount: Bill.count()]
    }

    def show(Bill billInstance) {
        respond billInstance
    }

    def create() {
        respond new Bill(params)
    }

    @Transactional
    def save(Bill billInstance) {
        if (billInstance == null) {
            notFound()
            return
        }

        if (billInstance.hasErrors()) {
            respond billInstance.errors, view: 'create'
            return
        }

        billInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bill.label', default: 'Bill'), billInstance.id])
                redirect billInstance
            }
            '*' { respond billInstance, [status: CREATED] }
        }
    }

    def edit(Bill billInstance) {
        respond billInstance
    }

    @Transactional
    def update(Bill billInstance) {
        if (billInstance == null) {
            notFound()
            return
        }

        if (billInstance.hasErrors()) {
            respond billInstance.errors, view: 'edit'
            return
        }

        billInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Bill.label', default: 'Bill'), billInstance.id])
                redirect billInstance
            }
            '*' { respond billInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Bill billInstance) {

        if (billInstance == null) {
            notFound()
            return
        }

        billInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Bill.label', default: 'Bill'), billInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bill.label', default: 'Bill'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
