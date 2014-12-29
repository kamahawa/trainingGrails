package webshoptrain

class Bill {

    int number
    Television television
    Customer customer

    //many to many : many bills to many products
    //beLongsTo only 1 domain in case many to many
    static belongsTo = [Television]
    static hasMany = [billTelevision: Television, customerBill: Customer]

    static mapping = {
        billTelevision joinTable: [name:"bill_television", key:"bill_id"]
        customerBill joinTable: [name:"customer_bill", key:"bill_id"]
    }

    static constraints = {
        number nullable: false
    }
}
