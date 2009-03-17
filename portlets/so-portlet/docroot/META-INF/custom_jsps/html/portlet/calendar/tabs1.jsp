<%
/**
 * Copyright (c) 2008-2009 Liferay, Inc. All rights reserved.
 *
 * This file is part of Liferay Social Office. Liferay Social Office is free
 * software: you can redistribute it and/or modify it under the terms of the GNU
 * Affero General Public License as published by the Free Software Foundation,
 * either version 3 of the License, or (at your option) any later version.
 *
 * Liferay Social Office is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License
 * for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Liferay Social Office. If not, see http://www.gnu.org/licenses/agpl-3.0.html.
 */
%>

<%@ include file="/html/portlet/calendar/init.jsp" %>

<%
String tabs1 = ParamUtil.getString(request, "tabs1", tabs1Default);

PortletURL tabs1URL = renderResponse.createRenderURL();

tabs1URL.setParameter("struts_action", "/calendar/view");
tabs1URL.setParameter("month", String.valueOf(selMonth));
tabs1URL.setParameter("day", String.valueOf(selDay));
tabs1URL.setParameter("year", String.valueOf(selYear));
%>

<div class="calendar-tabs">
	<h1 class="title">
		<liferay-ui:message key="calendar" />
	</h1>

	<%
	tabs1URL.setParameter("tabs1", "month");
	%>

	<a class="month <%= tabs1.equals("month") ? "selected" : "" %>" href="<%= tabs1URL.toString() %>"><liferay-ui:message key="month" /></a>

	<%
	tabs1URL.setParameter("tabs1", "week");
	%>

	<a class="week <%= tabs1.equals("week") ? "selected" : "" %>" href="<%= tabs1URL.toString() %>"><liferay-ui:message key="week" /></a>

	<%
	tabs1URL.setParameter("tabs1", "day");
	%>

	<a class="day <%= tabs1.equals("day") ? "selected" : "" %>" href="<%= tabs1URL.toString() %>"><liferay-ui:message key="day" /></a>
</div>