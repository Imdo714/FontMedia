<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/study/resources/css/review/review.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	
    <div class="outer">
		<div class="notice-wrap">
			<div class="notice-header">

                <div class="container">
                    <h1>리뷰</h1>
                </div>

				<div id="board-search">
                    <div class="container">
                        <div class="search-window">
                                <div class="search-wrap">
                                    <label for="search" class="blind">공지사항 내용 검색</label>
                                    <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                                    <button type="submit" class="btn btn-dark">검색</button>
                                </div>
                        </div>
                    </div>
                </div>

                <div class="review-insert">
                    <button type="button" class="btn-write" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        리뷰 작성
                    </button>
                </div>

			</div>
			<hr style="border: 1px color= silver;" width="100%">
			<div class="accordion" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne${i}"
							aria-expanded="true" aria-controls="collapseOne${i}">
							Title</button>
					</h2>
					<div id="collapseOne${i}" class="accordion-collapse collapse"
						data-bs-parent="#accordionExample">
						<div class="accordion-body">Content
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	    <div class="modal-dialog modal-xl">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h1 class="modal-title fs-5" id="exampleModalLabel">리뷰 작성하시오</h1>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <form class="mb-3" name="myform" id="myform" method="post">
	                <fieldset>
	                    <span class="text-bold">별점을 선택해주세요</span>
	                    <input type="radio" name="reviewStar" value="5" id="rate1"><label
	                        for="rate1">★</label>
	                    <input type="radio" name="reviewStar" value="4" id="rate2"><label
	                        for="rate2">★</label>
	                    <input type="radio" name="reviewStar" value="3" id="rate3"><label
	                        for="rate3">★</label>
	                    <input type="radio" name="reviewStar" value="2" id="rate4"><label
	                        for="rate4">★</label>
	                    <input type="radio" name="reviewStar" value="1" id="rate5"><label
	                        for="rate5">★</label>
	                </fieldset>
	
	                <div>
	                    <input id="reviewTitle" type="text" placeholder="제목을 작성해주세요">
	                </div>
	
	                <div>
	                    <textarea class="col-auto form-control" type="text" id="reviewContents"
	                        placeholder="리뷰를 남겨주세요"></textarea>
	                </div>
	            </form>	
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	                <button type="button" class="btn btn-primary">Save changes</button>
	            </div>
	        </div>
	    </div>
	</div>
	
</body>
</html>