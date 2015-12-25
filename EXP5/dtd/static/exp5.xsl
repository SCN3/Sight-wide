<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>

    <link rel="stylesheet" type="text/css"
	   href="res/bootstrap/css/bootstrap.min.css"></link>

    <link rel="stylesheet" href="res/bootstrap-table/bootstrap-table.min.css"></link>
    <script type="text/javascript"
        src="res/jquery-latest.min.js"></script>
    <script type="text/javascript"
        src="res/bootstrap-table/bootstrap-table.min.js"></script>
	<style>
		h1{
			font-family:SimHei;
			font-size:16pt;
			text-align:center;
		}
		p{
			font-family:SimSun;
			font-size:10.5pt;
		}
	</style>    

</head>
<body>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                <h1>
                    <xsl:value-of select="/project/title"/>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">项目简介</h3>
                </div>
            </div>
            <div class="panel-body">
            	<p>
                    <xsl:value-of select="/project/introduction"/>
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-info">    
            <div class="panel-heading">
                <h3 class="panel-title">组员信息</h3>
            </div>
            
            <table class="table">            
                <thead>
                <tr>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>在课题中的职责</th>
                </tr>
                </thead>
                <tbody>
                <xsl:for-each select="/project/team/member">
                <xsl:sort select="sno"/>
                <tr>
                    <td><xsl:value-of select="sno"/></td>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="gender"/></td>
                    <td><xsl:value-of select="duty"/></td>
                </tr>
                </xsl:for-each>
                </tbody>
            </table>
            
        </div>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>