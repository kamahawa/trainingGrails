package webshoptrain

abstract class Electronic {
    String id
    String name
    String description
    String price
    String manufacture

    static constraints = {
        name nullable: false, maxSize: 200
        description maxSize: 200
        price maxSize: 12
        manufacture maxSize: 200
    }

    static mapping = {
        table "Electronic"
        discriminator column: "type"
        parentElectronic column: "parent_electronic_id"
    }
}
