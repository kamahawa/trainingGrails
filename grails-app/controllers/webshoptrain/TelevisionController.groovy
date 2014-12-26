package webshoptrain


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TelevisionController {
    WebShopService webShopService;
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond webShopService.getListTvService(params), model: [televisionInstanceCount: Television.count()]
    }

    def show(Television televisionInstance) {
        respond televisionInstance
    }

    def create() {
        respond new Television(params)
    }

    @Transactional
    def save(Television televisionInstance) {
        if (televisionInstance == null) {
            notFound()
            return
        }

        if (televisionInstance.hasErrors()) {
            respond televisionInstance.errors, view: 'create'
            return
        }

        webShopService.save(televisionInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'television.label', default: 'Television'), televisionInstance.id])
                redirect televisionInstance
            }
            '*' { respond televisionInstance, [status: CREATED] }
        }
    }

    def edit(Television televisionInstance) {
        respond televisionInstance
    }

    @Transactional
    def update(Television televisionInstance) {
        if (televisionInstance == null) {
            notFound()
            return
        }

        if (televisionInstance.hasErrors()) {
            respond televisionInstance.errors, view: 'edit'
            return
        }

        webShopService.save(televisionInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Television.label', default: 'Television'), televisionInstance.id])
                redirect televisionInstance
            }
            '*' { respond televisionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Television televisionInstance) {

        if (televisionInstance == null) {
            notFound()
            return
        }

        webShopService.delete(televisionInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Television.label', default: 'Television'), televisionInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'television.label', default: 'Television'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
