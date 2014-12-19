package webshoptrain

class HomeController {

    def index() {
        [message:"Welcome to Grails. Today is ", date: new Date()]
    }
}
