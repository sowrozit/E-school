package com.iskul.controllers;

import com.iskul.dao.CategoryDao;

import com.iskul.dao.TopicDao;
import com.iskul.model.Category;

import com.iskul.model.Topic;
import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Sowrozit on 5/5/2017.
 */
@RestController
public class DocumentController {


    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private SessionFactory sessionFactory;

    @RequestMapping(value = "/manage/api/categories/",method = RequestMethod.GET)
    public List<Category> getCategories() {
        return categoryDao.getAllCategories();

    }

    @RequestMapping(value = "/manage/api/category/",method = RequestMethod.GET)
    public Category getCategory() {
        return categoryDao.getCategory(1);

    }
}
