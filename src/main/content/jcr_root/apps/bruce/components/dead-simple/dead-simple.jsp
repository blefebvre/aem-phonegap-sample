<%--
	Copyright 2013 Bruce Lefebvre

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	 http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
--%><%
%><%@include file="/libs/foundation/global.jsp" %><%
%><%@page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">
		<% currentDesign.writeCssIncludes(pageContext); %>
		<cq:include script="/libs/wcm/core/components/init/init.jsp"/>
		<cq:include script="/libs/foundation/components/page/stats.jsp"/>
	</head>
	<body>
		<cq:include path="the-parsys" resourceType="foundation/components/parsys" />
	</body>
</html>
