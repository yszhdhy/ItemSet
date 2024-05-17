//package com.xc.process.security.utils;
//
//import cn.hutool.core.lang.TypeReference;
//import cn.hutool.json.JSONUtil;
//import com.dingtalk.api.DefaultDingTalkClient;
//import com.dingtalk.api.DingTalkClient;
//import com.dingtalk.api.request.OapiUserGetuserinfoRequest;
//import com.dingtalk.api.request.OapiV2UserGetRequest;
//import com.dingtalk.api.response.OapiUserGetuserinfoResponse;
//import com.dingtalk.api.response.OapiV2UserGetResponse;
//import com.ds.model.vo.LoginVo;
//import com.ds.security.constant.SysConstants;
//import com.taobao.api.ApiException;
//import org.springframework.data.redis.core.StringRedisTemplate;
//
//import java.util.Map;
//
//
//public class DinGetPhoneUtils {
//
//
//    public  String getResult(LoginVo loginVo,SysConstants sysConstants,StringRedisTemplate stringRedisTemplate) {
//        // 获取access_token，注意正式代码要有异常流处理
//        String access_token= sysConstants.getAPP_ACCESS_TOKEN();
//        // 获取用户信息
//        DingTalkClient client = new DefaultDingTalkClient("https://oapi.dingtalk.com/user/getuserinfo");
//        OapiUserGetuserinfoRequest requesthttp = new OapiUserGetuserinfoRequest();
//        requesthttp.setCode(loginVo.getDinCode());
//        requesthttp.setHttpMethod("GET");
//        OapiUserGetuserinfoResponse responseHttp;
//        try {
//            responseHttp = client.execute(requesthttp, access_token);
//        } catch (ApiException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            return null;
//        }
//        // 查询得到当前用户的userId
//        // 获得到userId之后应用应该处理应用自身的登录会话管理（session）,避免后续的业务交互（前端到应用服务端）每次都要重新获取用户身份，提升用户体验
//        String userId = responseHttp.getUserid();
//        String user = getUser(userId,sysConstants);
//        Map<String, Object> userInfo = JSONUtil.toBean(user, new TypeReference<Map<String, Object>>() {
//        }, false);
//        String phone = userInfo.get("mobile").toString();
//        System.out.println(user);
//        System.out.println(phone);
//
//        return phone;
//    }
//
//    public  String getUser(String userid,SysConstants sysConstants) {
//        try {
//            DingTalkClient client = new DefaultDingTalkClient("https://oapi.dingtalk.com/topapi/v2/user/get");
//            OapiV2UserGetRequest req = new OapiV2UserGetRequest();
//            req.setUserid(userid);
//            req.setLanguage("zh_CN");
//            OapiV2UserGetResponse rsp = client.execute(req,sysConstants.getAPP_ACCESS_TOKEN());
//            System.out.println(rsp.getBody());
//            Map<String, Object> res = JSONUtil.toBean(rsp.getBody(), new TypeReference<Map<String, Object>>() {
//            }, false);
//            return JSONUtil.toJsonStr(res.get("result"));
//        } catch (ApiException e) {
//            e.printStackTrace();
//        }
//        return "";
//    }
//}
