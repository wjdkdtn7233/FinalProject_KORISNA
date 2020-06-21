<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal fade" id="search-modal" tabindex="-1" role="dialog"
	aria-labelledby="search-modal" aria-hidden="true">
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="modal-search">
					<form action="index.html">
						<input type="text" name="text" placeholder="Search here...">
						<button>
							<i class="fas fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>