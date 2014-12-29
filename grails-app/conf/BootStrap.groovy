import webshoptrain.AccountBank
import webshoptrain.Bill
import webshoptrain.Customer
import webshoptrain.MobilePhone
import webshoptrain.Television
import webshoptrain.Television

class BootStrap {

    def init = { servletContext ->
        try{
            initialData()
        }catch (Exception ex){
            print ex.message
        }
    }
    def destroy = {
    }

    private void initialData(){
        def mobilePhoneApple = new MobilePhone(name:"Apple", description:"iOS", price: "18.000.000", manufacture:"America").save()
        def mobilePhoneNokia = new MobilePhone(name:"Nokia", description:"Windows phone", price: "9.750.000", manufacture:"Holland").save()
        def mobilePhoneSamsung = new MobilePhone(name:"Samsung", description:"Android", price: "12.000.000", manufacture:"Korea").save()
        def tvProductSharp = new Television(name:"Sharp", description:"Tv màn hình phẳng, siêu mỏng.", price: "5.000.000", manufacture:"Korea").save()
        def tvProductToshiba = new Television(name:"Toshiba", description:"Tv màn hình phẳng.", price: "13.000.000", manufacture:"Japanese").save()
        def tvProductSony = new Television(name:"Sony", description:"Tv LCD siêu mỏng.", price: "15.000.000", manufacture:"Japanese").save()
        def accBank1 = new AccountBank(bankName: "VietinBank", numberAccount: "1234567890AB").save()
        def accBank2 = new AccountBank(bankName: "Vietcombank", numberAccount: "0987654321").save()
        def accBank3 = new AccountBank(bankName: "Dong A", numberAccount: "123123321321").save()
        def cs1 = new Customer(username: "abc", password: "abc", name: "Teo", birthday: new Date("10/11/1997"), accountBank: AccountBank.get(1)).save()
        def cs2 = new Customer(username: "xyz", password: "xyz", name: "Ti", birthday: new Date("11/11/1997"), accountBank: AccountBank.get(2)).save()
        def cs3 = new Customer(username: "aaa", password: "zzz", name: "Teo Ti", birthday: new Date("12/11/1997"), accountBank: AccountBank.get(3)).save()
        def cs1Bill = new Bill(number: 2, customer: Customer.get(1), television: Television.get(1)).save()
        def cs2Bill = new Bill(number: 4,customer: Customer.get(1), television: Television.get(2)).save()
        def cs3Bill = new Bill(number: 1, customer: Customer.get(2), television: Television.get(1)).save()
        def cs4Bill = new Bill(number: 3, customer: Customer.get(2), television: Television.get(2)).save()
    }
}
