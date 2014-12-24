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
            tv.name = params.txtName
            tv.description = params.txtDescription
            tv.price = params.txtPrice
            tv.manufacture = params.txtManufacture
            //tv.save(flush: true)
        }catch(Exception e) {
//            redirect(controller: 'Electronic', action: "television)
            println("error ne")
        }
        return tv
    }
}
