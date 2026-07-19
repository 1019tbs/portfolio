<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>田伏佑多のPortfolio</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>

    <jsp:include page="common/header.jsp" />

    <main>

        <section class="hero">

            <img
                src="${pageContext.request.contextPath}/image/header.png"
                alt="青空と花畑の中に立つ男の子が描かれたポートフォリオのメイン画像">

        </section>

    </main>

    <jsp:include page="common/footer.jsp" />

</body>
</html>