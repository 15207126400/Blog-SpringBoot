package com.ivan.blog.utils;


import lombok.extern.slf4j.Slf4j;
import nl.bitwalker.useragentutils.Browser;
import nl.bitwalker.useragentutils.OperatingSystem;
import nl.bitwalker.useragentutils.UserAgent;
import nl.bitwalker.useragentutils.Version;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;

/*
 *  @Author: Ivan
 *  @Description:   获取请求IP地址、浏览器相关信息
 *  @Date: 2019/12/28 19:32
 */
@Slf4j
public class IpAndAddrUtil {

    /**
     * 获取客户端ip地址
     * @param request   请求对象
     * @return          实际ip
     */
    public static String getCliectIp(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        log.info("当前请求ip为：{}" , ip);
        if (ip == null || ip.trim() == "" || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        }
        if (ip == null || ip.trim() == "" || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.trim() == "" || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.trim() == "" || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }

        // 多个路由时，取第一个非unknown的ip
        final String[] arr = ip.split(",");
        for (final String str : arr) {
            if (!"unknown".equalsIgnoreCase(str)) {
                ip = str;
                break;
            }
        }
        return ip;
    }

    /**
     * 获取发起请求的浏览器名称
     */
    public static String getBrowserName(HttpServletRequest request) {
        String header = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgent.parseUserAgentString(header);
        Browser browser = userAgent.getBrowser();
        return browser.getName();
    }

    /**
     * 获取发起请求的浏览器版本号
     */
    public static String getBrowserVersion(HttpServletRequest request) {
        String str = "";
        String header = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgent.parseUserAgentString(header);
        //获取浏览器信息
        Browser browser = userAgent.getBrowser();
        //获取浏览器版本号
        Version version = browser.getVersion(header);
        if(version != null){
            return version.getVersion();
        }

        return str;
    }

    /**
     * 获取发起请求的操作系统名称
     */
    public static String getOsName(HttpServletRequest request) {
        String header = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgent.parseUserAgentString(header);
        OperatingSystem operatingSystem = userAgent.getOperatingSystem();
        return operatingSystem.getName();
    }
}