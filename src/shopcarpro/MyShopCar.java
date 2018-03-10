package shopcarpro;

import java.util.ArrayList;

/**
 * Created by jal on 2018/3/10 0010.
 */
public class MyShopCar {
    private ArrayList buyList = new ArrayList();

    public ArrayList getBuyList() {
        return buyList;
    }

    public void addItem(GoodsSingle single){
        if(single != null) {
            if (buyList.size() == 0) {
                GoodsSingle fruit = new GoodsSingle();
                fruit.setPrice(single.getPrice());
                fruit.setName(single.getName());
                fruit.setNum(single.getNum());
                buyList.add(fruit);
            } else {
                int i = 0;
                for (; i < buyList.size(); i++) {
                    GoodsSingle fruit = (GoodsSingle) buyList.get(i);
                    if (fruit.getName().equals(single.getName())) {
                        fruit.setNum(fruit.getNum() + 1);
                        break;
                    }
                }
                if (i >= buyList.size()) {
                    GoodsSingle fruit = new GoodsSingle();
                    fruit.setPrice(single.getPrice());
                    fruit.setName(single.getName());
                    fruit.setNum(single.getNum());
                    buyList.add(fruit);
                }
            }
        }
    }

    public void removeItem(String name){
        for(int i = 0; i < buyList.size(); i++){
            GoodsSingle fruit = (GoodsSingle)buyList.get(i);
            if(fruit.getName().equals(MyTools.toChinese(name)) ){
                if(fruit.getNum() > 1){
                    fruit.setNum(fruit.getNum()-1);
                    break;
                }
                else if(fruit.getNum()==1)buyList.remove(i);
            }
        }
    }

    public void clearCar(){
        buyList.clear();
    }

    public void setBuyList(ArrayList buyList) {
        this.buyList = buyList;
    }
}
