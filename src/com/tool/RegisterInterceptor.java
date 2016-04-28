package com.tool;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * Created by Zephery on 2016/4/16.
 */
public class RegisterInterceptor extends AbstractInterceptor{
    @Override
    public String intercept(ActionInvocation arg0) throws Exception{
        String resultString=arg0.invoke();
        return resultString;
    }
}
