/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.generator.freemarker.directive.article;

import java.io.IOException;
import java.util.Map;

import com.ewcms.generator.freemarker.directive.ArticleDirective;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 关联文章标签
 * 
 * @deprecated
 * @author wangwei
 */
public class RelatedDirective extends ArticleDirective {

    @Override
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public void execute(Environment env, Map params, TemplateModel[] loopVars,
            TemplateDirectiveBody body) throws TemplateException, IOException {
        
        params.put("name", new SimpleScalar("relations"));
        super.execute(env, params, loopVars, body);
    }
}
