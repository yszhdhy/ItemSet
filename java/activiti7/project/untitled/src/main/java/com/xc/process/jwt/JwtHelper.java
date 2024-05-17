package com.xc.process.jwt;

import io.jsonwebtoken.*;
import org.springframework.util.StringUtils;

import java.util.Date;

//jwt工具类
public class JwtHelper {

    private static long tokenExpiration = 365 * 24 * 60 * 60 * 1000;
    private static String tokenSignKey = "123456";

    //根据用户id和用户名称生成token字符串
    public static String createToken(Long userId, String username) {
        String token = Jwts.builder()
                //分类
                .setSubject("AUTH-USER")

                //设置token有效时长
                .setExpiration(new Date(System.currentTimeMillis() + tokenExpiration))

                //设置主体部分
                .claim("userId", userId)
                .claim("username", username)

                //签名部分
                .signWith(SignatureAlgorithm.HS512, tokenSignKey)
                .compressWith(CompressionCodecs.GZIP)
                .compact();
        return token;
    }

    //从生成token字符串获取用户id
    public static Long getUserId(String token) {
        try {
            if (StringUtils.isEmpty(token)) return null;

            Jws<Claims> claimsJws = Jwts.parser().setSigningKey(tokenSignKey).parseClaimsJws(token);
            Claims claims = claimsJws.getBody();
            Integer userId = (Integer) claims.get("userId");
            return userId.longValue();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //从生成token字符串获取用户名称
    public static String getUsername(String token) {
        try {
            if (StringUtils.isEmpty(token)) return "";

            Jws<Claims> claimsJws = Jwts.parser().setSigningKey(tokenSignKey).parseClaimsJws(token);
            Claims claims = claimsJws.getBody();
            return (String) claims.get("username");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
//        String token = JwtHelper.createToken(6L, "li4");
//        System.out.println(token);
//        Long userId = JwtHelper.getUserId(token);
//        String username = JwtHelper.getUsername(token);
//        System.out.println(userId);
//        System.out.println(username);

        String username = JwtHelper.getUsername("eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgwN8dANDXYNUtJRSq0oULIyNLMwMzAxMTIx0FEqLU4t8kwBihkaQjh5ibmpQE0vZ3Y87Zz4YuMqpVoAjFafTkgAAAA.4tCEz-NPAK6pgcc4Q7kdqEy5Fe00be7pis66mcUOkyzeMSZje0IhLiQc2iJACU8_3rQ7Pl3B2stvMxh_RmZpnw");
        System.out.println(username);
    }
}
