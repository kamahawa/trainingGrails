package webshoptrain

import grails.transaction.Transactional

@Transactional
class WebShopService {

    @Transactional(readOnly = true)
    def getListTvService() {
        Television.list()
    }

    def editTVByID(params){
        Television.get(params.id)
    }

    def updateTvByID(params){
        def tv = Television.get(params.id)
        try{
            tv.name = params.name
            tv.description = params.description
            tv.price = params.price
            tv.manufacture = params.manufacture
            tv.save(flush: true)
        }catch(Exception e) {
//            redirect(controller: 'Electronic', action: "television)
        }
        return tv
    }
}
