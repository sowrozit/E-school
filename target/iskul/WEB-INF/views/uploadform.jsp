<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Sowrozit
  Date: 5/5/2017
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UploadForm</title>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/resources/js/doc/jquery.gdocsviewer.min.js"></script>


    <script type="text/javascript">
        /*<![CDATA[*/
        $(document).ready(function() {
            $('#embedURL').gdocsViewer();
        });
        /*]]>*/
    </script>
</head>
<body>
<h1>File Upload Example - JavaTpoint</h1>

<h3 style="color:red">${filesuccess}</h3>
<div>
    <form:form method="post" action="savefile" enctype="multipart/form-data">
        <p><label for="fileToUpload">Choose Image</label></p>
        <p><input name="file" id="fileToUpload" type="file" /></p>
        <p><input type="submit" value="Upload"></p>

        <a id="doc" target="_blank" href="http://localhost:8080/images/1.pdf" alt="">link</a>
    </form:form>
</div>
<%--<div>--%>


    <%--<h3>URLs with id: embedURL</h3>--%>
    <%--<a href="http://localhost:8080/images/1.pdf" id="embedURL">Sample PDF at samplepdf.com</a>--%>
<%--</div>--%>

<div>
    <img src="http://localhost:8080/images/something.jpg" alt="">
</div>




</body>
</html>
