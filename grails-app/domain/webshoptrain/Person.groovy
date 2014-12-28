package webshoptrain

abstract class Person {
    String username
    String password
    String name
    Date birthday

    static constraints = {
        username nullable: false, maxSize: 200
        password nullable: false, maxSize: 200
        name nullable: false, maxSize: 200
    }

    static mapping = {
        table "Person"
        discriminator column: "type"
        parentElectronic column: "parent_person_id"
    }
}
