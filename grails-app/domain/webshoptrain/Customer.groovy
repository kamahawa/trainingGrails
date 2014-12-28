package webshoptrain

class Customer extends Person {

    AccountBank accountBank
    Bill bill

    //one to many: 1 customer to many bills
    static hasMany = [bills: Bill]

    static constraints = {
    }

    static mapping ={
        discriminator value: "1", type: "integer"
    }
}
