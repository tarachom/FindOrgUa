<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="" doctype-system="" indent="yes"/>

	<xsl:param name="Title" />
	<xsl:param name="MenuActive" />
	<xsl:param name="Body" />
	
	<xsl:template match="root">
		
		<html>
			<head>
				<xsl:call-template name="head" />
			</head>
			<body>
				<xsl:call-template name="top" />
				<xsl:call-template name="nav" />
				<xsl:call-template name="body" />
				<xsl:call-template name="footer" />
			</body>
						
		</html>
		
	</xsl:template>

	<xsl:template name="top">
		
		<div class="jumbotron jumbotron-fluid" style="padding-left:20px;margin-bottom:0;">
			<h1>В пошуках мудрості</h1>
		</div>
		
	</xsl:template>
	
	<xsl:template name="nav">

		<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-bottom:20px;">
			<a class="navbar-brand" href="/">find.org.ua</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="nav nav-pills">
					<li class="nav-item">
						<a href="index.html">
							<xsl:attribute name="class">
								<xsl:text>nav-link </xsl:text>
								<xsl:if test="$MenuActive=1">
									<xsl:text>active</xsl:text>
								</xsl:if>
							</xsl:attribute>
							<xsl:text>Статті</xsl:text>
						</a>
					</li>
					<li class="nav-item">
						<a href="programing.html">
							<xsl:attribute name="class">
								<xsl:text>nav-link </xsl:text>
								<xsl:if test="$MenuActive=2">
									<xsl:text>active</xsl:text>
								</xsl:if>
							</xsl:attribute>
							<xsl:text>Програмування</xsl:text>
						</a>
					</li>
					<li class="nav-item">
						<a href="about.html">
							<xsl:attribute name="class">
								<xsl:text>nav-link </xsl:text>
								<xsl:if test="$MenuActive=3">
									<xsl:text>active</xsl:text>
								</xsl:if>
							</xsl:attribute>
							<xsl:text>Про проєкт</xsl:text>
						</a>
					</li>
				</ul>
			</div>
		</nav>
		
	</xsl:template>

	<xsl:template name="body">

		<div class="container-fluid">
			<div class="row">
				<xsl:value-of select="$Body" disable-output-escaping="yes" />
			</div>
		</div>
		
	</xsl:template>

	<xsl:template name="head">

		<title>
			<xsl:value-of select="$Title"/>
		</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="bootstrap/bootstrap.min.css" />
		<script src="bootstrap/jquery.min.js"></script>
		<script src="bootstrap/popper.min.js"></script>
		<script src="bootstrap/bootstrap.min.js"></script>

		<!-- Google -->
		<script data-ad-client="ca-pub-8744330757055064" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-FQGF7F91SM"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());
			gtag('config', 'G-FQGF7F91SM');
		</script>

	</xsl:template>

	<xsl:template name="footer">
		
		<div class="jumbotron text-center" style="margin-bottom:0;margin-top:20px;">
			<p>2020</p>
		</div>
		
	</xsl:template>
	
</xsl:stylesheet>
