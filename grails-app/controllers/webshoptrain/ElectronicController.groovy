package webshoptrain

class ElectronicController {
    WebShopService webShopService;
    def index(params) {
        return [eList: Electronic.findAll()]
    }

    def television(){
        return [tvList: webShopService.getListTvService()]
    }

    def edit(params){
        def result = webShopService.editTVByID(params)
        return [result: result]
    }

    def delete(params){

    }

    def update(params){
        def result = webShopService.updateTvByID(params)
        render(view: "show", model: [result: result])
    }

//    def show(params){
//        return [result: result]
//    }

}
