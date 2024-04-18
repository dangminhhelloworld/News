<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- CSS Bootstrap -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid text-xs-center">
        <a class="navbar-brand" href="#">Logo Trang Tin Tức</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <form class="d-flex">
                        <input
                                class="form-control me-2"
                                type="search"
                                placeholder="Search"
                                aria-label="Search"
                        />
                        <button class="btn btn-outline-warning fw-bold" type="submit">
                            Search
                        </button>
                    </form>
                </li>
                <!-- form login -->
                <li class="nav-item">
                    <button class="log" data-bs-toggle="modal" data-bs-target="#log">
                        <a class="nav-link h5" aria-current="page" href="#"
                        >Đăng nhập</a
                        >
                    </button>

                    <div
                            class="modal fade log"
                            id="log"
                            tabindex="-1"
                            aria-labelledby="log"
                            aria-hidden="true"
                    >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="log">Đăng nhập</h5>
                                    <button
                                            type="submit"
                                            class="btn-close"
                                            data-bs-dismiss="modal"
                                            aria-label="Close"
                                    ></button>
                                </div>
                                <!-- Form login -->
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="username" class="col-form-label"
                                            >Username:</label
                                            >
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    id="recipient-name"
                                            />
                                        </div>
                                        <div class="mb-3">
                                            <label for="password" class="col-form-label"
                                            >Password:</label
                                            >
                                            <input
                                                    type="password"
                                                    class="password form-control"
                                                    id="password"
                                            />
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button
                                            type="button"
                                            class="btn btn-warning"
                                            data-bs-dismiss="modal"
                                    >
                                        Đóng
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        Đăng Nhập
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- form đăng kí -->
                <li class="nav-item">
                    <button class="reg" data-bs-toggle="modal" data-bs-target="#reg">
                        <a class="nav-link h5" href="#">Đăng kí</a>
                    </button>

                    <div
                            class="modal fade reg"
                            id="reg"
                            tabindex="-1"
                            aria-labelledby="reg"
                            aria-hidden="true"
                    >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="reg">Đăng kí</h5>
                                    <button
                                            type="submit"
                                            class="btn-close"
                                            data-bs-dismiss="modal"
                                            aria-label="Close"
                                    ></button>
                                </div>

                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="username" class="col-form-label"
                                            >Username:</label
                                            >
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    id="recipient-name"
                                            />
                                        </div>
                                        <div class="mb-3">
                                            <label for="fullname" class="col-form-label"
                                            >Full Name:</label
                                            >
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    id="recipient-name"
                                            />
                                        </div>


                                        <div class="mb-3">
                                            <label for="password" class="col-form-label"
                                            >Password:</label
                                            >
                                            <input
                                                    type="password"
                                                    class="password form-control"
                                                    id="password"
                                            />

                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button
                                            type="button"
                                            class="btn btn-secondary"
                                            data-bs-dismiss="modal"
                                    >
                                        Đóng
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        Đăng Kí
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- hết form đăng kí -->
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Het nav dau -->

<nav style="--bs-breadcrumb-divider: ''" aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item h3">
            <a class="text-decoration-none home-den" href="#">
                <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="30"
                        height="26"
                        fill="currentColor"
                        class="bi bi-house-door"
                        viewBox="0 0 16 16"
                >
                    <path
                            d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"
                    />
                </svg>
                Home</a
            >
        </li>
        <li class="breadcrumb-item h3" aria-current="page">
            <a href="#" class="home-den text-decoration-none">Library</a>
        </li>
        <li class="breadcrumb-item h3" aria-current="page">
            <a href="#" class="home-den text-decoration-none">Library</a>
        </li>
        <li class="breadcrumb-item h3" aria-current="page">
            <a href="#" class="home-den text-decoration-none">Library</a>
        </li>
        <li class="breadcrumb-item h3" aria-current="page">
            <a href="#" class="home-den text-decoration-none">Library</a>
        </li>
        <li class="breadcrumb-item h3" aria-current="page">
            <a href="#" class="home-den text-decoration-none">Library</a>
        </li>
    </ol>
</nav>
<!-- het nav sau -->
<div class="noidungnews">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100 fade-in-down">
                    <img
                            src="./assets/istockphoto-1458505035-1024x1024.jpg"
                            class="card-img-top"
                            alt="./assets/istockphoto-1458505035-1024x1024.jpg"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="thongtinbv"><b> By Đặng Minh</b> | <span>IT</span></p>

                        <p class="card-text">
                            This is a longer card with supporting text below as a natural
                            lead-in to additional content. This content is a little bit
                            longer.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 wow fadeInUp">
                    <img
                            src="./assets/istockphoto-1458505035-1024x1024.jpg"
                            class="card-img-top"
                            alt="./assets/istockphoto-1458505035-1024x1024.jpg"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="thongtinbv"><b> By Đặng Minh</b> | <span>IT</span></p>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img
                            src="./assets/istockphoto-1458505035-1024x1024.jpg"
                            class="card-img-top"
                            alt="./assets/istockphoto-1458505035-1024x1024.jpg"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="thongtinbv"><b> By Đặng Minh</b> | <span>IT</span></p>
                        <p class="card-text">
                            This is a longer card with supporting text below as a natural
                            lead-in to additional content.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img
                            src="./assets/istockphoto-1458505035-1024x1024.jpg"
                            class="card-img-top"
                            alt="./assets/istockphoto-1458505035-1024x1024.jpg"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="thongtinbv"><b> By Đặng Minh</b> | <span>IT</span></p>
                        <p class="card-text">
                            This is a longer card with supporting text below as a natural
                            lead-in to additional content. This content is a little bit
                            longer.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 col1-4">
                    <div class="tren">
                        <a class="navbar-brand" href="#">Logo Trang Tin Tức</a>
                    </div>
                    <div class="duoi my-2">
                        <p>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                            Ratione itaque voluptatem corrupti optio, dolorum commodi
                            ducimus iste. Totam necessitatibus, voluptates et iste cum
                            sequi, dolore blanditiis exercitationem aut, quo aspernatur.
                            Iusto quia itaque temporibus excepturi quibusdam, id numquam
                            laborum voluptatem ipsum quod optio neque perferendis harum
                            impedit facere doloremque. Maxime similique esse harum hic
                            sint quod dolores ullam aspernatur vitae. Aenda impedit.
                        </p>
                        <a href="#!" class="xemthem text-decoration-none"
                        >
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="16"
                                    height="16"
                                    fill="currentColor"
                                    class="bi bi-chevron-right"
                                    viewBox="0 0 16 16"
                            >
                                <path
                                        fill-rule="evenodd"
                                        d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708"
                                />
                            </svg>
                            <span> Read More</span>
                        </a>
                    </div>
                </div>
                <!-- het col1-4 -->
                <div class="col-sm-3 cot2-4">
                    <h3 style="margin-bottom: 20px">Tin Mới Nhất</h3>
                    <div class="row mottinf">
                        <div class="col-sm-3">
                            <div class="anhtinf">
                                <img
                                        src="https://tse4.mm.bing.net/th?id=OIP.RMsrxXx-kHDjoyH4hXiV-QHaHa&pid=Api&P=0&h=20"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <a href="#!" class="tdtin text-decoration-none">Your Title</a>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Provident quidem excepturi odio dolorem non, cumque ad id
                                quae, dolorum possimus at ea expedita iusto dolore. Odio
                                minus fugiat impedit sunt?
                            </p>
                        </div>
                    </div>
                    <div class="row mottinf">
                        <div class="col-sm-3">
                            <div class="anhtinf">
                                <img
                                        src="https://tse4.mm.bing.net/th?id=OIP.RMsrxXx-kHDjoyH4hXiV-QHaHa&pid=Api&P=0&h=20"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <a href="#!" class="tdtin text-decoration-none">Your Title</a>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Provident quidem excepturi odio dolorem non, cumque ad id
                                quae, dolorum possimus at ea expedita iusto dolore. Odio
                                minus fugiat impedit sunt?
                            </p>
                        </div>
                    </div>
                    <div class="row mottinf">
                        <div class="col-sm-3">
                            <div class="anhtinf">
                                <img
                                        src="https://tse4.mm.bing.net/th?id=OIP.RMsrxXx-kHDjoyH4hXiV-QHaHa&pid=Api&P=0&h=20"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <a href="#!" class="tdtin text-decoration-none">Your Title</a>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Provident quidem excepturi odio dolorem non, cumque ad id
                                quae, dolorum possimus at ea expedita iusto dolore. Odio
                                minus fugiat impedit sunt?
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Het 2 4  -->

                <div class="col-sm-4 cot3-4">
                    <div class="tren">
                        <h3 class="tieudef">Tag Widget</h3>

                        <a class="text-decoration-none" href="">awesome</a>
                        <a class="text-decoration-none" href="">Beautiful</a>
                        <a class="text-decoration-none" href="">HTML5</a>
                        <a class="text-decoration-none" href="">CCS3</a>
                        <a class="text-decoration-none" href="">Chrome</a>

                    </div>
                    <div class="duoi">
                        <h3 class="tieudef">Blog Categores</h3>
                        <ul>
                            <li>
                                <a href="#" class=" tdtin">Tin về HTML 5</a>
                            </li>
                            <li>
                                <a href="#" class=" tdtin">Tin về HTML 5</a>
                            </li>
                            <li>
                                <a href="#" class=" tdtin">Tin về HTML 5</a>
                            </li>
                            <li>
                                <a href="#" class=" tdtin">Tin về HTML 5</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- het cot 3-4 -->
            </div>
        </div>
    </div>
</footer>

<!-- JS Bootstrap  -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"
></script>
</body>
</html>