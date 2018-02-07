package Service;

import Bean.Library;
import Dao.LibraryDao;
import page.PageBean;

import java.io.UnsupportedEncodingException;

/**
 * Created by zgf on 2018/2/4.
 * LibraryService 为了调用LibraryDao的接口并被LibraryService所用
 */
public class LibraryService {
    private LibraryDao libraryDao=new LibraryDao();
    public  void add(Library library){
        libraryDao.add(library);
    }
    public void delete(String id){libraryDao.delete(id);}
    public void edit(Library Library){
        libraryDao.edit(Library);
    }
    public Library find(String id){
        return libraryDao.find(id);
    }
    public PageBean<Library> showAll(int pageCode, int pageRecord){
        return libraryDao.showAll(pageCode, pageRecord);
    }
    public PageBean<Library> query(Library library, int pageCode, int pageRecord)throws UnsupportedEncodingException {
        return libraryDao.query(library, pageCode, pageRecord);
    }
}
