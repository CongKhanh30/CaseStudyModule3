<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi-VN"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/css/editProduct.css"/>">
    <title>Sửa Sản Phẩm</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-2 nav-bar-left">
            <div class="row">
                <div class="col-12 px-0 nav-bar-logo">
                    <img src="<c:url value = "/view/img/logoshop.png"/>" alt=""
                         href="http://localhost:8080/product?action=getAll" style="width: 100%" height="70px">
                </div>
                <a href="product?action=getAll" class="col-12 nav-bar-list btn-color">
                    <div class="nav-bar-list_icon">
                        <i class="fa-solid fa-laptop"></i>
                    </div>
                    <div class="nav-bar-list_text">
                        <p>Sản phẩm</p>
                    </div>
                </a>
                <a href="user?action=getAll" class="col-12 nav-bar-list">
                    <div class="nav-bar-list_icon">
                        <i class="fa-solid fa-circle-user"></i>
                    </div>
                    <div class="nav-bar-list_text">
                        <p>User</p>
                    </div>
                </a>
                <a href="product?action=importDetail" class="col-12 nav-bar-list">
                    <div class="nav-bar-list_icon">
                        <i class="fa-solid fa-file-import"></i>
                    </div>
                    <div class="nav-bar-list_text">
                        <p>Nhập kho</p>
                    </div>
                </a>
                <a href="" class="col-12 nav-bar-list">
                    <div class="nav-bar-list_icon">
                        <i class="fa-solid fa-file-export"></i>
                    </div>
                    <div class="nav-bar-list_text">
                        <p>Xuất kho</p>
                    </div>
                </a>
                <a href="" class="col-12 nav-bar-list">
                    <div class="nav-bar-list_icon">
                        <i class="fa-solid fa-clipboard-list"></i>
                    </div>
                    <div class="nav-bar-list_text">
                        <p>Thống kê</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-10 body-right">
            <div class="row header-body">
                <div class="col-10 header-body_search">
                    <div class="header-search_icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    <div class="header-search_input">
                        <input type="text" name="header-search" placeholder="Nhập tìm kiếm">
                    </div>
                </div>
                <div class="col-2 header-body_information">
                    <div class="admin">
                        <div class="header--information_icon">
                            <i class="fa-solid fa-user"></i>
                        </div>
                        <div class="header--information_text">
                            <p>${user.username}</p>
                        </div>
                    </div>
                    <div class="header--information_text">
                        <a href="user?action=logout"><p>Đăng xuất</p></a>
                    </div>
                </div>
            </div>
            <div class="row page-title">
                <div class="col-6 text-theme">
                    <H1>Sản phẩm</H1>
                    <p>ADMIN > PRODUCT > EDIT_PRODUCT</p>
                </div>
                <div class="col-6">

                </div>
            </div>
            <div class="main-body-position">
                <form action="product?action=edit&id=${product.productId}" method="post">
                    <div class="row">
                        <div class="col-6 pd-10 mg-15">
                            <div class="body-add_text">
                                <label>Nhập tên sản phẩm</label>
                            </div>
                            <div class="body-add_input">
                                <input type="text" name="productName" placeholder="Nhập tên sản phẩm"
                                       value="${product.productName}" required>
                            </div>
                        </div>
                        <div class="col-6 mg-15">
                            <div class="body-add_text">
                                <label>Chọn thương hiệu</label>
                            </div>
                            <div class="body-add_input">
                                <select name="brandId" id="select-brand">
                                    <c:forEach items="${brandList}" var="brand">
                                        <option value="${brand.brandId}">${brand.brandName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 pd-10 mg-15">
                            <div class="body-add_text">
                                <label>Chọn loại</label>
                            </div>
                            <div class="body-add_input">
                                <select name="categoryId" id="select-category">
                                    <c:forEach items="${categoryList}" var="category">
                                        <option value="${category.categoryId}">${category.categoryName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-6 mg-15">
                            <div class="body-add_text">
                                <label>Nhập giá tiền</label>
                            </div>
                            <div class="body-add_input">
                                <input type="number" name="price" placeholder="Nhập giá tiền"
                                       value="<fmt:formatNumber type = "number" groupingUsed = "false" value="${product.price}"/>" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 pd-10 mg-15">
                            <div class="body-add_text">
                                <label>Nhập số lượng</label>
                            </div>
                            <div class="body-add_input">
                                <input type="number" name="quantity" placeholder="Nhập số lượng"
                                       value="${product.quantity}" required>
                            </div>
                        </div>
                        <div class="col-6 mg-15">
                            <div class="body-add_text">
                                <label>Nhập mô tả</label>
                            </div>
                            <div class="body-add_input">
                                <textarea name="detail" rows="1" cols="53" required>${product.detail}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 pd-10 mg-15">
                            <div class="body-add_text">
                                <label>Nhập ảnh</label>
                            </div>
                            <div class="body-add_input">
                                <textarea name="image" id="link" onchange="checkImage();" rows="1" cols="45">${product.image}</textarea>
                            </div>
                        </div>
                        <div class="col-6 mg-15">
                            <img src="<c:url value = "${product.image}"/>" alt="" id="image" style="width: 200px" height="200px">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mg-15 add-btn">
                            <div class="body-add_btn">
                                <button type="submit" class="btn btn-primary">Sửa sản phẩm</button>
                            </div>
                            <div class="body-add_btn">
                                <a href="product?action=getAll" type="button" class="btn btn-primary">Trở lại</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script>
    document.getElementById("select-brand").value =${product.brand.brandId};
    document.getElementById("select-category").value =${product.category.categoryId};

    let checkImage = function () {
        document.getElementById("image").src = document.getElementById("link").value;
    }

</script>
