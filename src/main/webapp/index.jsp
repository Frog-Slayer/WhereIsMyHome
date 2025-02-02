<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap5" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Brygada+1918:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@400;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/tiny-slider.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/flatpickr.min.css">
  <link rel="stylesheet" href="css/glightbox.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous"
  />
  <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
  />
  <script src="./js/key.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  <title> Where is My Home! </title>
</head>
<body>
<div class="site-mobile-menu site-navbar-target">
  <div class="site-mobile-menu-header">
    <div class="site-mobile-menu-close">
      <span class="icofont-close js-menu-toggle"></span>
    </div>
  </div>
  <div class="site-mobile-menu-body"></div>
</div>

<%@include file="nav.jsp"%>

<div class="hero overlay">
  <div class="img-bg rellax">
    <img src="images/hero_1.jpg" alt="Image" class="img-fluid">
  </div>

  <div class="container">
    <div class="row align-items-center justify-content-start">
      <div class="col-lg-5">

        <h1 class="heading" data-aos="fade-up">Where Is<br>&nbsp &nbsp &nbsp &nbsp My Home</h1>
        <p class="mb-5" data-aos="fade-up">구해줘 홈즈!</p>
      </div>
    </div>
  </div>
</div>

<!--동별 아파트별 실거래가 조회 기능 -->
<!--조회하면 아래쪽으로 창 열리면서 뜨게 하기-->
<!--중간에 핫 매물이 들어갈 거임-->
<div class="section service-section-1">
  <div class="container">
    <div class="row">

      <div class="col-md-12" id = "searchDetail">
        <!-- 아파트 매매 정보 검색 start -->
        <form id = "searchForm" onchange="getLocalNames()" >
        <div class="row">
          <div class="input-group col-md-6">
            <span class="input-group-text mb-3">아파트 명</span>
            <input type="text" class="form-control mb-3" id = "aptName" name = "aptName" placeholder="아파트 명"/>
            <div class="form-group mb-3">
              <select class="form-select bg-secondary text-light" id="sido" name = "sido"> </select>
            </div>
            <div class="form-group mb-3">
              <select class="form-select bg-secondary text-light" id="gugun" name = "gugun"> </select>
            </div>
            <div class="form-group mb-3">
              <select class="form-select bg-secondary text-light" id="dong" name = "dong" > </select>
            </div>
            <div class="form-group mb-3">
              <select class="form-select bg-dark text-light" id="year" name = "year"> </select>
            </div>
            <div class="form-group mb-3">
              <select class="form-select bg-dark text-light" id="month" name = "month"></select>
            </div>
          </div>
        </div>
        </form>
      </div>
      <div class = "col-md-4">
        <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
        <label class="btn btn-outline-primary" for="btnradio1">전체</label>

        <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
        <label class="btn btn-outline-primary" for="btnradio2">매매</label>

        <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
        <label class="btn btn-outline-primary" for="btnradio3">전세</label>

        <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off">
        <label class="btn btn-outline-primary" for="btnradio4">월세</label>
      </div>
      <div class="form-group col-md-2">
        <button type="button" id="list-btn" class="btn btn-outline-primary">
          아파트매매정보
        </button>
      </div>
    </div>
  </div>
</div>
<div class = "section">
  <div class = "container">
    <div id="map" class="mt-3" style="width: 100%; height: 400px"></div>
  </div>
</div>

<div class = "section">
  <div class = "container">
    <table class="table table-hover text-center" style="display: none" id="aptTable">
      <tr>
        <th>아파트이름</th>
        <th>층</th>
        <th>면적</th>
        <th>법정동</th>
        <th>거래금액</th>
      </tr>
      <tbody id="aptlist"></tbody>
    </table>
  </div>
</div>

<div class="site-footer">
  <div class="container">

    <div class="row">
      <div class="col-lg-4">
        <div class="widget">
          <h3>About Passport<span class="text-primary">.</span> </h3>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        </div> <!-- /.widget -->
        <div class="widget">
          <h3>Connect</h3>
          <ul class="list-unstyled social">
            <li><a href="#"><span class="icon-instagram"></span></a></li>
            <li><a href="#"><span class="icon-twitter"></span></a></li>
            <li><a href="#"><span class="icon-facebook"></span></a></li>
            <li><a href="#"><span class="icon-linkedin"></span></a></li>
            <li><a href="#"><span class="icon-pinterest"></span></a></li>
            <li><a href="#"><span class="icon-dribbble"></span></a></li>
          </ul>
        </div> <!-- /.widget -->
      </div> <!-- /.col-lg-3 -->

      <div class="col-lg-2 ml-auto">
        <div class="widget">
          <h3>Links</h3>
          <ul class="list-unstyled float-left links">
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div> <!-- /.widget -->
      </div> <!-- /.col-lg-3 -->

      <div class="col-lg-2">
        <div class="widget">
          <h3>Company</h3>
          <ul class="list-unstyled float-left links">
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div> <!-- /.widget -->
      </div> <!-- /.col-lg-3 -->


      <div class="col-lg-3">
        <div class="widget">
          <h3>Contact</h3>
          <address>43 Raymouth Rd. Baltemoer, London 3910</address>
          <ul class="list-unstyled links mb-4">
            <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
            <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
            <li><a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
          </ul>
        </div> <!-- /.widget -->
      </div> <!-- /.col-lg-3 -->

    </div> <!-- /.row -->

    <div class="row mt-5">
      <div class="col-12 text-center">
        <p class="mb-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ --> Distributed By <a href="https:/themewagon.com" target="_blank">ThemeWagon</a>
        </p>
      </div>
    </div>
  </div> <!-- /.container -->
</div> <!-- /.site-footer -->

<!-- Preloader -->
<div id="overlayer"></div>
<div class="loader">
  <div class="spinner-border text-primary" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/tiny-slider.js"></script>
<script src="js/aos.js"></script>
<script src="js/navbar.js"></script>
<script src="js/counter.js"></script>
<script src="js/rellax.js"></script>
<script src="js/flatpickr.js"></script>
<script src="js/glightbox.min.js"></script>
<script src="js/custom.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"
></script>
<script
        type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=458b9c7c88ae93c2ef75e5944de0071f&libraries=services,clusterer,drawing"
></script>

<script>
    $(document).ready(function(){
    getLocalNames()
    });

    function getLocalNames() {
      let xhr = new XMLHttpRequest();
      let sido = document.getElementById("sido").value;
      let gugun = document.getElementById("gugun").value;
      let dong = document.getElementById("dong").value;
      let year = document.getElementById("year").value;
      let month = document.getElementById("month").value;
      let url = "/getLocalNames?sido=" + sido + "&gugun=" + gugun + "&dong=" + dong + "&year=" + year;

      xhr.open("GET", url, true);
      xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
          let res = JSON.parse(xhr.responseText);
          let sidos = res["sidos"];
          let guguns = res["guguns"];
          let dongs = res["dongs"];
          let years = res["years"];
          let months = res["months"];

          let sidoOpts;
          let gugunOpts;
          let dongOpts;
          let yearOpts;
          let monthOpts;

          sidoOpts += "<option value = ''> 시도선택 </option>";
          for (let i = 0; i < sidos.length; i++) {
            if (!sidos[i]) continue;
            if (sido == sidos[i]) sidoOpts += "<option value='" + sidos[i] + "'selected >" + sidos[i] + "</option>";
            else sidoOpts += "<option value='" + sidos[i] + "'>" + sidos[i] + "</option>";
          }

          gugunOpts += "<option value = ''> 구군선택 </option>";
          for (let i = 0; i < guguns.length; i++) {
            if (!guguns[i]) continue;
            if (gugun == guguns[i]) gugunOpts += "<option value='" + guguns[i] + "'selected >" + guguns[i] + "</option>";
            else gugunOpts += "<option value='" + guguns[i] + "'>" + guguns[i] + "</option>";
          }

          dongOpts += "<option value = ''> 동선택 </option>";
          for (let i = 0; i < dongs.length; i++) {
            if (!dongs[i]) continue;
            if (dong == dongs[i]) dongOpts += "<option value='" + dongs[i] + "'selected>" + dongs[i] + "</option>";
            else dongOpts += "<option value='" + dongs[i] + "'>" + dongs[i] + "</option>";
          }

          yearOpts += "<option value = ''> 매매년도 </option>";
          for (let i = 0; i < years.length; i++) {
            if (!years[i]) continue;
            if (year == years[i]) yearOpts += "<option value='" + years[i] + "'selected>" + years[i] + "</option>";
            else yearOpts += "<option value='" + years[i] + "'>" + years[i] + "</option>";
          }

          monthOpts += "<option value = ''> 매매월 </option>";
          for (let i = 0; i < months.length; i++) {
            if (!months[i]) continue;
            if (month == months[i]) monthOpts += "<option value='" + months[i] + "'selected>" + months[i] + "</option>";
            else monthOpts += "<option value='" + months[i] + "'>" + months[i] + "</option>";
          }
          document.querySelector('#sido').innerHTML = sidoOpts;
          document.querySelector('#gugun').innerHTML = gugunOpts;
          document.querySelector('#dong').innerHTML = dongOpts;
          document.querySelector('#year').innerHTML = yearOpts;
          document.querySelector('#month').innerHTML = monthOpts;
        }
      }
      xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
      xhr.send();
    }
</script>

<script>
  ///////////////////////// 아파트 매매 정보 /////////////////////////
  document.querySelector("#list-btn").addEventListener("click", function () {
    let xhr = new XMLHttpRequest();
    let aptName = document.getElementById("aptName").value;
    let sido = document.getElementById("sido").value;
    let gugun = document.getElementById("gugun").value;
    let dong = document.getElementById("dong").value;
    let year = document.getElementById("year").value;
    let month = document.getElementById("month").value;
    let aptList = document.getElementById("aptlist");
    let table = document.getElementById("aptTable");
    let tbody = "";
    let url = "/getAptList?aptName="+aptName + "&sido="+sido+"&gugun="+gugun+"&dong="+dong+"&year="+year+"&month="+month;
    xhr.open("POST", url, true);
    xhr.onreadystatechange = function () {
      if (xhr.readyState == 4 && xhr.status == 200) {
        if (!xhr.responseText) return;
        let res = JSON.parse(xhr.responseText);
        for (let i = 0; i < res.length; i++){
            let info= res[i];

            let aptName = info.aptName;
            let floor = info.floor;
            let area = info.area;
            let dong = info.dong;
            let dealAmount = info.dealAmount;
            tbody += '<tr>';
            tbody += '<td>' + aptName + '</td>';
            tbody += '<td>' + floor + '</td>';
            tbody += '<td>' + area + '</td>';
            tbody += '<td>' + dong + '</td>';
            tbody += '<td>' + dealAmount + '</td>';
            tbody += '</tr>';
        }
        aptList.innerHTML = tbody;
        table.setAttribute("style", "display: ;");
      }
    }
    xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    xhr.send();
  });
</script>
<script>
  // 카카오지도
  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
          mapOption = {
            center: new kakao.maps.LatLng(37.500613, 127.036431), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
          };

  // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
  var map = new kakao.maps.Map(mapContainer, mapOption);

  var marker, infowindow;
  function viewMap(apt, address) {
    if (marker != null && infowindow != null) {
      marker.setMap(null);
      infowindow.close();
    }
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(address, function (result, status) {
      // 정상적으로 검색이 완료됐으면
      if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        marker = new kakao.maps.Marker({
          map: map,
          position: coords,
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        infowindow = new kakao.maps.InfoWindow({
          content: `<div style="width:150px;text-align:center;padding:6px 0;">${apt}</div>`,
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
      }
    });
  }

  function initTable() {
    let tbody = document.querySelector("#aptlist");
    let len = tbody.rows.length;
    for (let i = len - 1; i >= 0; i--) {
      tbody.deleteRow(i);
    }
  }
</script>
</body>
</html>
