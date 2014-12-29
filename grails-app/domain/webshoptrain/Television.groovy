package webshoptrain

class Television extends Electronic {

    //many to many : many products to many bills
    static hasMany = [bill:Bill]

    static mapping ={
        discriminator value: "2", type: "integer"
        bill joinTable: [name:"bill_television",key:"television_id"]
    }

    static constraints = {
    }
}
