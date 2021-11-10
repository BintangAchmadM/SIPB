@extends('layout.main')

@section('container')

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href='/'>Home</a></li>
			<li class="active">About</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-sm-8 maincontent">
				<header class="page-header">
					<h1 class="page-title">About Lancana</h1>
				</header>
				<h3>Lancana</h3>
				<p><img src="assets/images/about.jpg" alt="" class="img-rounded pull-right" width="300" ></p>
				<p>Sejarah Lancana terbentuk tidak terlepas dari perkembangan penanggulangan bencana pada masa tugas pwbf hingga bencana alam berupa gempa bumi dahsyat di Samudera Hindia pada abad 20. Sementara itu, perkembangan tersebut sangat dipengaruhi pada konteks situasi, cakupan dan paradigma penanggulangan bencana.</p>
				<p> Melihat kenyataan saat ini, berbagai bencana yang dilatarbelakangi kondisi geografis, geologis, hidrologis, dan demografis mendorong Indonesia untuk membangun visi untuk membangun ketangguhan bangsa dalam menghadapi bencana.</p>
				
				<!--
				<h3>Company Goals</h3>
				<p>tak de!</p>
				<h3>Team</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia voluptatem natus velit fugiat omnis rem eos sapiente quasi quaerat aspernatur quisquam deleniti accusantium laboriosam odio id?</p>
				<h3>Public News</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente., consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam laudantium voluptates placeat consectetur quam aliquam beatae soluta accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente.</p>
				-->
			</article>
			<!-- /Article -->
			
			<!-- Sidebar -->
			<aside class="col-sm-4 sidebar sidebar-right">

				<div class="panel">
					<h4>Latest News</h4>
					<!--
					<ul class="list-unstyled list-spaces">
						<li><a href="">Responsive Design</a><br><span class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, laborum.</span></li>
						<li><a href="">HTML5, CSS3 and JavaScript</a><br><span class="small text-muted">Consequuntur eius repellendus eos aliquid molestiae ea laborum ex quibusdam</span></li>
						<li><a href="">Bootstrap</a><br><span class="small text-muted">Eveniet, consequuntur eius repellendus eos aliquid molestiae ea</span></li>
						<li><a href="">Clean Template</a><br><span class="small text-muted">Sed, mollitia earum debitis est itaque esse reiciendis amet cupiditate.</span></li>
						<li><a href="">Premium Quality</a><br><span class="small text-muted">Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.</span></li>
					</ul>
				-->
				</div>

			</aside>
			<!-- /Sidebar -->

		</div>
	</div>	
	
	<!-- /container -->
	
	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					<div class="col-md-5 panel">
						<h3 class="panel-title">About Lancana</h3>
						<div class="panel-body">
							<p>Lancana merupakan .....</p> 
						</div>
					</div>

					<div class="col-md-4 panel contact"> 
						<h3 class="panel-title">Contact Info</h4>
						<div class="panel-body">
						<p>Hubungi kami .</p>
						<ul>
						  <li><i class="fa fa-phone"></i>0812-3418-9999</li>
						  <li><a href="#"><i class="fa fa-envelope-o"></i> lancana@gmail.com</a></li>
						  <li><i class="fa fa-flag"></i>Gubeng Jaya</li>
						</ul> 
						</div>
					</div>

					<div class="col-md-3 panel">
						<h3 class="panel-title">Follow me</h3>
						<div class="panel-body">
							<p class="follow-me-icons">
								<a href=""><i class="fa fa-twitter fa-2"></i></a>
								<a href=""><i class="fa fa-dribbble fa-2"></i></a>
								<a href=""><i class="fa fa-github fa-2"></i></a>
								<a href=""><i class="fa fa-facebook fa-2"></i></a>
								<a href=""><i class="fa fa-youtube fa-2"></i></a>
								<a href=""><i class="fa fa-pinterest fa-2"></i></a>
							</p>	
						</div>
					</div>
			
				</div> <!-- /row of panels -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="index.html">Home</a> | 
								<a href="about.html">About</a> |
							
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; 2021. 
							</p>
						</div>
					</div>

				</div> <!-- /row of panels -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>