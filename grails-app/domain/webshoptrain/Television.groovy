package webshoptrain

class Television extends Electronic {

    static mapping ={
        discriminator value: "2", type: "integer"
    }

    static constraints = {
    }
}
