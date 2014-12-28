package webshoptrain

class Bill {

    int idCustomer
    int idProduct
    int number
    Television television

    static constraints = {
        idCustomer nullable: false
        idProduct nullable: false
        number nullable: false
    }

    //many to many : many bills to many products
    //beLongsTo only 1 domain in case many to many
    static belongsTo = [Television]
    static hasMany = [Television]
}
