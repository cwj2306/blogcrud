<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp"%>


<section
	class="s-content s-content--narrow s-content--no-padding-bottom">

	<article class="row format-standard">

		<div class="s-content__header col-full">
			<h1 class="s-content__header-title">${board.title}fdsgfgdfgdfgdsfgdgdsgfgdsgfgdsfdgfdggfdfgsfgs</h1>
			<ul class="s-content__header-meta">
				<li class="date">${board.createDate}</li>
			</ul>
		</div>
		<!-- end s-content__header -->

		<div>
			<img src="/images/avatars/user-03.jpg" alt="" style="width: 6.6rem; height: 6.6rem; border-radius: 50%;">
			<h4 style="margin: 0rem">UserName</h4>
			
			<div class="s-extra" style="background-color: transparent; padding: 0rem;">
				<div class="tagcloud">
					<a href="/delete">Delete</a>
					<a href="/updateForm">Update</a>
				</div>
			</div>
			
		</div>


		<div class="s-content__media col-full">
			<div class="s-content__post-thumb">
				<img src="/images/thumbs/single/standard/standard-1000.jpg" alt="">
			</div>
		</div>
		<!-- end s-content__media -->


		<div class="col-full s-content__main">

			<div class="lead">${board.content}</div>

			<p class="lead">Duis ex ad cupidatat tempor Excepteur cillum
				cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu
				exercitation incididunt adipisicing veniam velit id fugiat enim
				mollit amet anim veniam dolor dolor irure velit commodo cillum sit
				nulla ullamco magna amet magna cupidatat qui labore cillum sit in
				tempor veniam consequat non laborum adipisicing aliqua ea nisi sint.</p>

			<p>Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat
				nostrud cupidatat dolor sunt sint sit nisi est eu exercitation
				incididunt adipisicing veniam velit id fugiat enim mollit amet anim
				veniam dolor dolor irure velit commodo cillum sit nulla ullamco
				magna amet magna cupidatat qui labore cillum sit in tempor veniam
				consequat non laborum adipisicing aliqua ea nisi sint ut quis
				proident ullamco ut dolore culpa occaecat ut laboris in sit minim
				cupidatat ut dolor voluptate enim veniam consequat occaecat fugiat
				in adipisicing in amet Ut nulla nisi non ut enim aliqua laborum
				mollit quis nostrud sed sed.</p>

			<p>
				<img src="/images/wheel-1000.jpg" alt="">
			</p>


		</div>
		<!-- end s-content__main -->

	</article>


</section>
<!-- s-content -->


<%@ include file="../include/footer.jsp"%>

</html>