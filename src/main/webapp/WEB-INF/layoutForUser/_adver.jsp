<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="nav-item" style="background-color: aqua;">
			<div class="container" >
			
				<nav class="nav-menu mobile-menu" >
					<ul>
						<li class="active"><a href="index">Home</a></li>
						<li><a href="shop">Shop</a></li>
						
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">AKAO</a>
							<ul class="dropdown">
							<c:if test="${!isLogin}">
								<li><a href="login">Login</a></li>
								<li><a href="register">Register</a></li>
							</c:if>
							<c:if test="${isLogin}">
								<li><a href="change-password">Change Password</a></li>
								<li><a href="profile">My Profile</a></li>
							</c:if>
							</ul>
						</li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>