
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

  <!--   
<c:choose>
  <c:when test="${empty releaseInformation}">
   <p>releaseInformation is empty
  </c:when>
  <c:otherwise>
    <ul><li>regenerationTime <c:out value="${releaseInformation.regenerationTime}"/>
    <li>releaseRequestOK <c:out value="${releaseInformation.releaseRequestOK}"/>
    <li>releaseTokens <c:out value="${releaseInformation.releaseTokens}"/>
    <li>tokensRemaining <c:out value="${releaseInformation.tokensRemaining}"/>
   <li>afterPublic <c:out value="${releaseInformation.afterPublic}"/>
    <li>tokensUsed <c:out value="${releaseInformation.tokensUsed}"/>
    </ul>
  </c:otherwise>
</c:choose>
-->

<p>
    You currently have ${releaseInformation.tokensRemaining} release tokens available.

    <!--  -->
    <c:if test="${not empty releaseInformation.regenerationSchedule}">
        <p>Release token(s) will regenerate at:
        <ul>
            <c:forEach var="timestamp" items="${releaseInformation.regenerationSchedule}">
                <li><fmt:formatDate value="${timestamp}" pattern="E',' dd MMM 'at' hh:mm a" /><br>
            </c:forEach>
        </ul>
    </c:if>
</p>