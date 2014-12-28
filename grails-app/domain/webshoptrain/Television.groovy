package webshoptrain

class Television extends Electronic {

    static mapping ={
        discriminator value: "2", type: "integer"
    }

    static constraints = {
    }

    //many to many : many products to many bills
    static hasMany = [Bill]
}
