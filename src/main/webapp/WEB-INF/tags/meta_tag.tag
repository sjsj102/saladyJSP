<%@ tag description="common meta Tag" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="title" required="false" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="anchor" content>
<meta name="title" content="샐러디, 매일매일 찾아가는 건강 식단">
<meta name="description" content="매일매일 신선한 샐러드를 집에서 만나요! 주문 당일 제조되어 보내지는 건강하고 든든한 한 끼, 샐러디가 책임져요.">
<meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트, 다이어트식단, 다이어트도시락, 헬스, 식단, 식단관리, 배달샐러드">
<title>${title == null ? "샐러디, 매일매일 찾아가는 샐러드" : title }</title>

<!-- favicon -->
<link rel="shortcut icon" href="<c:url value='/resources/images/salady_favicon.png' />">