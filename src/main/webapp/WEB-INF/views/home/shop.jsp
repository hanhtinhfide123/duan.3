<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="/home/index"><i class="fa fa-home"></i> Home</a> <span>Shop</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Product Shop Section Begin -->
<section class="product-shop spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 order-1 order-lg-2">
				<div class="product-show-option">
					<div class="row">
						<div class="col-lg-7 col-md-7">
							
						</div>
						<div class="col-lg-5 col-md-5 text-right">
							<p>Show ${page.number*9 + 1 } - ${page.number*9 + page.numberOfElements } Of ${page.totalElements } Product</p>
						</div>
					</div>
				</div>

				<div class="product-list">
					<div class="row">
						<c:forEach var="item" items="${page.content}">
							<div class="col-lg-4 col-sm-6">
								<div class="product-item">
									<div class="pi-pic">
										<img src="/forUser/img/products/${item.image}" alt="">
										<div class="sale pp-sale">Sale</div>
										<ul>
											<li class="w-icon active"><a
												href="/home/cart/add/${item.id }"><i
													class="icon_cart_alt"></i></a></li>
										
											
										</ul>
									</div>
									<div class="pi-text">
										<div class="catagory-name"></div>
										<a href="#">
											<h5>${item.name}</h5>
										</a>
										<div class="product-price">$${item.price}</div>
									</div>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>
				<hr />
				<div class="text-center">
					<a href="/home/shop?p=0" class="btn btn-primary">First</a> 
					<a href="/home/shop?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/home/shop?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/home/shop?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
</section>
<!-- Product Shop Section End -->
