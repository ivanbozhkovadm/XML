<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="images" select="'images'" />
<head>
	<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
<div id="home"><a href="#"><img src="images/home.png" width="70px" height="70px"/></a></div>
<div id="wrapper">
	<div id="logo"><img src="images/logo.png" /></div>
	
	<div id="navigation">
		<ul id="menu">
			<li><a href="#computers">Computers</a></li>
			<li><a href="#laptops">Laptops</a></li>
			<li id="dropdown">Parts
				<ul id="dropdown-ul">
					<li><a href="#processors">Processors</a></li>
					<li><a href="#ram">RAM boards  </a></li>
					<li><a href="#hard-drives">Hard drives </a></li>
					<li><a href="#video-cards">Video cards </a></li>
					<li><a href="#motherboards">Motherboards</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<hr class="category-delimiter"/>
	<div class="content">
		<div id="computers" class="category">
			<h1>Computers</h1>
			 <xsl:for-each select="computer-store/computers/computer">
				 <xsl:sort select="manufacturer" />
			
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
							<xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="processor"/>  </li>
							<li><xsl:value-of select="ram"/>GB DDR3</li>
							<li><xsl:value-of select="video"/>  </li>
							<li><xsl:value-of select="hard-drive"/>  GB HDD</li>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="laptops" class="category">
			<h1>Laptops</h1>
			 <xsl:for-each select="computer-store/laptops/laptop">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="screen"/>"</li>
							<li><xsl:value-of select="processor"/>  </li>
							<li> <xsl:value-of select="ram"/>GB DDR3</li>
							<li><xsl:value-of select="video"/>  </li>
							<li> <xsl:value-of select="hard-drive"/>GB HDD</li>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="processors" class="category">
			<h1>Processors</h1>
			 <xsl:for-each select="computer-store/parts/processors/processor">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="cores"/> cores</li>
							<li><xsl:value-of select="clock-frequency"/>GHz</li>
							<li><xsl:value-of select="cache-memory"/>MB Cache</li>
							<li><xsl:value-of select="consumption"/>W</li>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="ram" class="category">
			<h1>RAM boards</h1>
			 <xsl:for-each select="computer-store/parts/ram-boards/ram-board">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="memory"/> GB</li>
							<li><xsl:value-of select="frequency"/>MHz</li>
							<li><xsl:value-of select="type"/></li>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="video-cards" class="category">
			<h1>Video cards</h1>
			 <xsl:for-each select="computer-store/parts/video-cards/video-card">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="gpu_memory"/>GB <xsl:value-of select="type"/></li>
							<li ><xsl:value-of select="bus-width"/>-bit</li>
							<xsl:for-each select="port">
								<li>
									<xsl:value-of select="@name"/>
								</li>
							</xsl:for-each>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="hard-drives" class="category">
			<h1>Hard Drives</h1>
			 <xsl:for-each select="computer-store/parts/hard-drives/hard-drive">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="memory"/>TB </li>
							<li><xsl:value-of select="size"/>"</li>
							<li><xsl:value-of select="speed"/>Gb/s</li>
							<li><xsl:value-of select="cache"/>MB Cache</li>
							<li><xsl:value-of select="rpm"/> rPM</li>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
		<hr class="category-delimiter"/>
		<div id="hard-drives" class="category">
			<h1>Hard Drives</h1>
			 <xsl:for-each select="computer-store/parts/motherboards/motherboard">
				<div class="product">
					<div class="name">
						<xsl:value-of select="manufacturer"/> 
						<xsl:value-of select="model"/>
					</div>
					<div class="image">
						<img width="600px" height="400px">
						<xsl:attribute name="src">
						 <xsl:copy-of select="$images"/>/<xsl:value-of select="image"/>
						</xsl:attribute></img>
					</div>
					<div class="characteristics">
						<div class="price"><xsl:value-of select="price"/> $</div>
						<ul>
							<li><xsl:value-of select="chipset"/></li>
							<li>Socket <xsl:value-of select="socket"/></li>
							<xsl:for-each select="port">
								<li>
									<xsl:value-of select="@name"/>
								</li>
							</xsl:for-each>
						</ul>
					</div>
				</div>
				<xsl:if test="position() != last()">
					<hr class="product-delimiter" />
				</xsl:if>
			 </xsl:for-each>
		</div>
	</div>
</div>
<script>

</script>
</body>
</html>