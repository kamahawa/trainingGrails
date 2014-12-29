package webshoptrain

class AccountBank {
    String bankName
    String numberAccount

//    //one to one : 1 customer to 1 account bank
//    static belongsTo = [customer:Customer]

    static constraints = {
        bankName nullable: false, maxSize: 200
        numberAccount nullable: false, maxSize: 200
    }

    static mapping = {
        table "AccountBank"
        //accountBank joinTable: [name:"customer_accountBank", key: "accountBank_id"]
    }
}
