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
	<div class="container2">
        <div class="right-container">
            <div class="Test-container">
                <h1>템플릿 리뷰</h1>
                <p>아무도 안 볼 때 하는 연습이 완벽을 만든다</p>
            </div>

            <div class="push">
                <h1 onClick="location.href='../theme/theme.html'">템플릿 보러가기</h1>
            </div>
        </div>
    </div>

    <section class="notice">
        <div class="page-title">
            <div class="container">
                <h3>리뷰</h3>
            </div>
            <div class="review-insert">
                <!-- Button trigger modal -->
                <button type="button" class="btn-write" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    리뷰 작성
                </button>
            </div>
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
        
        <div id="board-list">
            <div class="board-container">
                <table class="board-table">
                    <thead>
                    <tr>
                        <th scope="col" class="th-num">번호</th>
                        <th scope="col" class="th-title">제목</th>
                        <th scope="col" class="th-date">등록일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>3</td>
                        <th><span>전체적으로 괜찮네요</span></th>
                        <td>2017.07.13</td>
                    </tr>
    
                    <tr>
                        <td>2</td>
                        <th><span>공지사항 안내입니다. 이용해주셔서 감사합니다</span></th>
                        <td>2017.06.15</td>
                    </tr>
    
                    <tr>
                        <td>1</td>
                        <th><span>공지사항 안내입니다. 이용해주셔서 감사합니다</span></th>
                        <td>2017.06.15</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content2">
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