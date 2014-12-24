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
    }
}
