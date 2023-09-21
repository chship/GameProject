<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>게임 게시판</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/phaser/3.60.0/phaser.min.js"
	integrity="sha512-YQL0GVx/Too3vZjBl9plePRIYsRnd1s8N6QOvXPdZ+JMH2mtRTLQXGUDGjNW6zr1HUgcOIury67IvWe91oeEwQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="/game/fullMoonBoat/JS/start.js"></script>
<script src="/game/fullMoonBoat/JS/index.js"></script>
<script src="/game/fullMoonBoat/JS/over.js"></script>
<link rel="stylesheet" href="/game/fullMoonBoat/CSS/index.css"
	type="text/css" />
<style>
* {
	box-sizing: border-box;
}

#head {
	background-color: #B1B2FF
}

#body {
	background-color: #D2DAFF
}

#footer {
	background-color: #B1B2FF
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

#wrapper {
	width: 800px;
	height: 600px;
	margin: auto;
}

#score {
	display: none;
}
</style>
</head>

<body>
	<div class="container-fluid p-0">
		<div id="head">
			<div>
				<div class="container">
					<div class="row">
						<div
							class="col-md-2 d-flex align-items-center justify-content-center">
							<img src="/UI_img/marvlestudio.jpg">
						</div>

						<div class="col-md-2 p-0">
							<div class="d-flex align-items-center justify-content-center"
								style="height: 40px; width: 150px; border-radius: 5px; background-color: #D2DAFF; margin-top: 2.4%">
								<i class="fas fa-gamepad me-2 mx-2" style="font-size: 1.5rem;"></i>
								<select class="form-select" aria-label="Default select example"
									style="max-width: 120px; background-color: #D2DAFF; width: 100%;">
									<option selected>Game</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
									<option value="4">Four</option>
									<option value="5">Five</option>
									<option value="6">Six</option>
								</select>
							</div>
						</div>
						<div
							class="col-md-8 ml-auto d-flex align-items-center justify-content-end p-0">
							<a class="nav-link" href="#"><img src="/UI_img/log-out.svg"></a>
						</div>

					</div>
				</div>
			</div>
			<div style="background-color: #D2DAFF; height: 20px"></div>
		</div>
		<div class="container-fluid p-0" style="background-color: #EEF1FF;">
			<div id="body" class="container p-0">
				<div id="top"
					style="display: flex; justify-content: center; align-items: center;">
					<img src="/UI_img/marvlestudio.jpg" alt="Marvel Studio">
				</div>

				<div id="center" class="mt-4"
					style="background-color: #FFF9B0; text-align: center;">
					<ul class="nav nav-pills nav-fill"
						style="width: 700px; margin: 0 auto; display: flex; justify-content: space-between; padding: 0;">
						<li class="nav-item"><a class="nav-link"
							href="/members/myPage.jsp">마이페이지</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/board/gameBoard.jsp">게임</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/board/freeboard.jsp">자유게시판</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/board/rankingBoard.jsp">랭킹게시판</a></li>
					</ul>
				</div>



				<div id="bottom" class="p-3 mt-2">
					<div id="title" class="p-2"
						style="background-color: white; display: flex; justify-content: space-between; align-items: center;">
						<ul class="nav nav-pills nav-fill"
							style="width: 700px; margin: 0 auto; display: flex; justify-content: space-between; padding: 0;">
							<li class="nav-item dropdown"><button type="button"
									class="btn" data-bs-toggle="dropdown" aria-expanded="false">
									지뢰찾기</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">하급</a></li>
									<li><a class="dropdown-item" href="#">중급</a></li>
									<li><a class="dropdown-item" href="#">상급</a></li>
								</ul>
							<li class="nav-item"><a class="nav-link" href="#">바운스볼</a></li>
							<li class="nav-item"><a class="nav-link" href="#">게임 3</a></li>
							<li class="nav-item"><a class="nav-link" href="#">게임 4</a></li>
							<li class="nav-item"><a class="nav-link" href="#">게임 5</a></li>
							<li class="nav-item"><a class="nav-link" href="#">게임 6</a></li>
						</ul>
					</div>
                        <h3 style="margin-top: 20px;">바운스볼</h3>
                        <hr>
                        <div id="wrapper" align="center">
                        <div id="point"></div>
                        </div>
                        <div class="alert alert-light">
                            <h4 class="alert-heading">바운스볼</h4>
                            <hr>
                            <p class="mb-0">설명입니다.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer" class="pt-4">footer</div>
        </div>
	<script>
    let option = {
            type:Phaser.AUTO,
            parent:"wrapper",
            width:"100%",
            height:"100%",
            physics:{
                default:"arcade",
                arcade:{
                    gravity:{y:0},
                    debug:false
                }
            },
            scene:[Start, Main, Over]
        };

        let game = new Phaser.Game(option);
        </script>
</body>

</html>