package webshoptrain

class Bill {

    int number
    Television television
    Customer customer

    //many to many : many bills to many products
    //beLongsTo only 1 domain in case many to many
    static belongsTo = [billTelevision: Television, customerBill: Customer]
    static hasMany = [billTelevision: Television]

    static mapping = {
        billTelevision joinTable: [name:"bill_television", key:"bill_id"]
    }

    static constraints = {
        number nullable: false
    }
}
