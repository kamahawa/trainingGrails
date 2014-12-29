package webshoptrain

class AccountBank {
    String bankName
    String numberAccount

    static constraints = {
        bankName nullable: false, maxSize: 200
        numberAccount nullable: false, maxSize: 200
    }

    //one to one
    static hasOne = [customer:Customer]

    static mapping = {
        table "AccountBank"
        customer joinTable: [name:"customer_accountBank", key:"accountBank_id"]
    }
}
