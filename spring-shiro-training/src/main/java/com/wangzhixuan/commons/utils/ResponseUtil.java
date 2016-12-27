package com.wangzhixuan.commons.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ResponseUtil {
    private static Logger logger = LoggerFactory.getLogger(ResponseUtil.class);

    public static String getObjectToJson(Object obj) throws Exception {
        String resultJson = null;
        ObjectMapper jsonMapper = new ObjectMapper();
        resultJson = jsonMapper.writeValueAsString(obj);
        return resultJson;
    }

    public static Object getObjectFromJson(String json, Class objClass) {
        ObjectMapper jsonMapper = new ObjectMapper();
        Object obj;
        try {
            obj = jsonMapper.readValue(json, objClass);
            if (obj != null) {
                return obj;
            }
        } catch (JsonParseException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void WriteJson(String methodName, Object resultMap, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        response.setContentType("text/html;charset=utf-8");
        String json = "";
        try {
            json = ResponseUtil.getObjectToJson(resultMap);
            logger.info("调用" + methodName + "方法返回的json数据:" + json);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.getWriter().print(json);
    }
}
