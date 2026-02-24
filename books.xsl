<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
<title>Book Information</title>

<style>
table{
border-collapse:collapse;
width:80%;
}
th,td{
border:1px solid black;
padding:8px;
text-align:center;
}
th{
background-color:lightblue;
}
</style>

</head>

<body>

<h2>Book Information</h2>

<table>

<tr>
<th>Title</th>
<th>Author</th>
<th>Category</th>
<th>Language</th>
<th>Pages</th>
<th>Edition</th>
<th>Price</th>
</tr>

<xsl:for-each select="bookstore/book">

<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="author"/></td>
<td><xsl:value-of select="category"/></td>
<td><xsl:value-of select="language"/></td>
<td><xsl:value-of select="pages"/></td>
<td><xsl:value-of select="edition"/></td>
<td><xsl:value-of select="price"/></td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>