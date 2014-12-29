package webshoptrain

class Customer extends Person {

    AccountBank accountBank

    //one to many
    static hasMany = [bills:Bill]

    static constraints = {
    }

    static mapping ={
        discriminator value: "1", type: "integer"
        //accountBank joinTable: [name:"customer_accountBank", key:"customer_id"]
        bills joinTable: [name: "customer_bill", key: "customer_id"]
    }
}
