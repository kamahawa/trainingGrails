package webshoptrain

class MobilePhone extends Electronic {

    static mapping ={
        discriminator value: "1", type: "integer"
    }

    static constraints = {
    }
}
