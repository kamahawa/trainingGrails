package webshoptrain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountBankController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountBank.list(params), model:[accountBankInstanceCount: AccountBank.count()]
    }

    def show(AccountBank accountBankInstance) {
        respond accountBankInstance
    }

    def create() {
        respond new AccountBank(params)
    }

    @Transactional
    def save(AccountBank accountBankInstance) {
        if (accountBankInstance == null) {
            notFound()
            return
        }

        if (accountBankInstance.hasErrors()) {
            respond accountBankInstance.errors, view:'create'
            return
        }

        accountBankInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountBank.label', default: 'AccountBank'), accountBankInstance.id])
                redirect accountBankInstance
            }
            '*' { respond accountBankInstance, [status: CREATED] }
        }
    }

    def edit(AccountBank accountBankInstance) {
        respond accountBankInstance
    }

    @Transactional
    def update(AccountBank accountBankInstance) {
        if (accountBankInstance == null) {
            notFound()
            return
        }

        if (accountBankInstance.hasErrors()) {
            respond accountBankInstance.errors, view:'edit'
            return
        }

        accountBankInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountBank.label', default: 'AccountBank'), accountBankInstance.id])
                redirect accountBankInstance
            }
            '*'{ respond accountBankInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountBank accountBankInstance) {

        if (accountBankInstance == null) {
            notFound()
            return
        }

        accountBankInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountBank.label', default: 'AccountBank'), accountBankInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountBank.label', default: 'AccountBank'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
