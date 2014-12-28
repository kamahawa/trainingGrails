package webshoptrain

import grails.transaction.Transactional

@Transactional
class WebShopService {

    @Transactional(readOnly = true)
    def getListTvService(params) {
        Television.list(params)
    }

    @Transactional
    def getListMobileService(params){
        MobilePhone.list(params)
    }

    @Transactional
    def getListMobileIdService(String idMobile){
        def model
        try
        {
            model = MobilePhone.get(idMobile)
        }catch(Exception ex){

        }
        model
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

    def save(Television televisionInstance){
        televisionInstance.save flush: true
    }

    def delete(Television televisionInstance){
        televisionInstance.delete flush: true
    }
}
