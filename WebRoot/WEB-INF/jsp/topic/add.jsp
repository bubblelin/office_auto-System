<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>发表新主题</title>
	<%@include file="/WEB-INF/jsp/public/header.jsp" %>
	<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/ckeditor/samples/sample.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/forum.css" />
</head>
<body>
<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 发表新主题
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">
<s:form action="topic_add" namespace="/" method="post" cssstyle="margin: 0; padding: 0;">
	<s:hidden name="forumId"></s:hidden>
	<div id="PageHead"></div>
	<center>
		<div class="ItemBlock_Title1">
			<div width=85% style="float:left">
				<font class="MenuPoint"> &gt; </font>
				<s:a action="forum_List" namespace="/">论坛</s:a>
				<font class="MenuPoint"> &gt; </font>
				<s:a action="forum_forumShow?id=%{id}" namespace="/">${name}</s:a>
				<font class="MenuPoint"> &gt;&gt; </font>
				发表新主题
			</div>
		</div>
		<div class="ItemBlockBorder">
			<table border="0" cellspacing="1" cellpadding="1" width="100%" id="InputArea">
				<tr>
					<td class="InputAreaBg" height="30"><div class="InputTitle">标题</div></td>
					<td class="InputAreaBg"><div class="InputContent">
						<input type="text" name="title" class="InputStyle" style="width:100%"/></div>
					</td>
				</tr>
				<tr height="240">
					<td class="InputAreaBg"><div class="InputTitle">内容</div></td>
					<td class="InputAreaBg">
						<div class="InputContent">
							<textarea id="content" name="content"></textarea>
						</div>
					</td>
				</tr>
				<tr height="30">
					<td class="InputAreaBg" colspan="2" align="center">
						<input type="image" src="${pageContext.request.contextPath}/style/blue/images/button/submit.PNG" style="margin-right:15px;"/>
						<a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/blue/images/button/goBack.png"/></a>
					</td>
				</tr>
			</table>
		</div>
	</center>
</s:form>
</div>

<div class="Description">
	说明：<br />
	
</div>
<script>

	CKEDITOR.replace( 'content', {
		uiColor: '#ABCDEF',
		toolbar: [
			['Source','DocProps','-','Save','NewPage','Preview','-','Templates'],
			['Cut','Copy','Paste','PasteText','PasteWord','-','Print','SpellCheck'],
			['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
			['Form','Checkbox','Radio','TextField','Textarea','Select','Button','ImageButton','HiddenField'],
			'/',
			['Bold','Italic','Underline','StrikeThrough','-','Subscript','Superscript'],
			['OrderedList','UnorderedList','-','Outdent','Indent','Blockquote','CreateDiv'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
			['Link','Unlink','Anchor'],
			['Image','Flash','Table','Rule','Smiley','SpecialChar','PageBreak'],
			'/',
			['Style','FontFormat','FontName','FontSize'],
			['TextColor','BGColor'],
			['FitWindow','ShowBlocks','-','About']
		]
	});

</script>
</body>
</html>

