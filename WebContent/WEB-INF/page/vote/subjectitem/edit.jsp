<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>调查投票</title>
		<link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/default/easyui.css"/>'>
		<link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/icon.css"/>'>
		<link rel="stylesheet" type="text/css" href="<s:url value="/source/css/ewcms.css"/>"/>							
		<script type="text/javascript" src='<s:url value="/source/js/jquery-1.4.2.min.js"/>'></script>
		<script type="text/javascript" src='<s:url value="/source/js/jquery.easyui.min.js"/>'></script>	
        <script type="text/javascript">
			function tipMessage(){
			    <s:if test="hasActionMessages()">  
			        <s:iterator value="actionMessages">  
						$.messager.alert('提示','<s:property escape="false"/>','info');
			        </s:iterator>  
		     	</s:if>  
			}
            <s:property value="javaScript"/>
        </script>
	</head>
	<body onload="tipMessage();">
		<s:form action="save" namespace="/vote/subjectitem">
			<table class="formtable" >
				<tr>
					<td>选项：</td>
					<td class="formFieldError">
						<s:textfield id="title" cssClass="inputtext" name="subjectItemVo.title" size="50"/>
						<s:fielderror ><s:param value="%{'subjectVo.title'}" /></s:fielderror>
					</td>
				</tr>
				<tr>
					<td>选项方式：</td>
					<td>
						<s:radio list="@com.ewcms.content.vote.model.SubjectItemStatus@values()" listValue="description" name="subjectItemVo.subjectItemStatus" id="subjectItemVo_subjectItemStatus"></s:radio>
					</td>
				</tr>
				<tr>
					<td>票数：</td>
					<td>
						<s:textfield id="title" cssClass="inputtext" name="subjectItemVo.voteNumber" size="50"/>
						
					</td>
				</tr>
			</table>
			<s:hidden name="subjectItemVo.id"/>
			<s:hidden name="subjectItemVo.sort"/>
			<s:hidden name="subjectId"/>
            <s:iterator value="selections" var="id">
                <s:hidden name="selections" value="%{id}"/>
            </s:iterator>			
		</s:form>
	</body>
</html>