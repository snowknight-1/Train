package service;

import java.util.List;
import com.train.dao.trainsdao;
import com.train.bean.trains;

public class ListService {
	public List<trains> queryMessageList(String startstation, String endstation,String date) {
        trainsdao trainsDao = new trainsdao();
        return trainsDao.queryMessageList(startstation,endstation,date);
    }
}
