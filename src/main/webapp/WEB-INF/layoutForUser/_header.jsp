<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<header class="header-section">
	<div class="header-top">
		<div class="container">
			<div class="ht-right">
				<!-- <a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a> -->

				<c:if test="${!isLogin}">
					<a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a>
					<div class="top-social">
						<a href="/home/register"><i class="fa fa-plus pr-1"></i>Register</a>
					</div>
				</c:if>
				<c:if test="${isLogin}">
					<c:if test="${admin}">
						<a href="/admin/index" class="login-panel"><i
							class="fa fa-user"></i>Administration</a>
					</c:if>
					<div class="top-social">
						<a href="profile" class="text-primary"
							style="font-weight: bolder;">${fullname}</a> <a
							class="text-danger" id="btnLogOff" href="/logout" title="">[Logout]</a>
					</div>
				</c:if>

			</div>
		</div>
	</div>

	<!--Logo-->
	<div class="container">
		<div class="inner-header">
			<div class="row">
				<div class="col-lg-3 text-left col-md-3">
					<ul class="nav-right">
						<li class="cart-icon"><a href="/home/cart"> <i
								class="icon_cart_alt"></i>
						</a></li>
						<li class="cart-price">Gio hang</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>