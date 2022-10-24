<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="head.jsp" %>

    <link rel="stylesheet" href="css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
        /* header.css */
        .hd {
            position: fixed;
        }

        /* content */
        .vs {
            clear: both;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }

        .vs img {
            display: block;
            width: 100%;
            height: auto;
        }

        .bread {
            clear: both;
            width: 100%;
            line-height: 60px;
            border-bottom: 3px solid rgb(129, 175, 219);
        }

        .bread_fr {
            width: 1200px;
            margin: 0 auto;
        }

        .page {
            clear: both;
            width: 100%;
            min-height: 100vh;
        }

        .page:after {
            content: "";
            display: block;
            clear: both;
        }

        .page_wrap {
            width: 1200px;
            margin: 0 auto;
        }

        .content {
            display: none;
        }

        .content:target {
            display: block;
        }

        .page_wrap {
            padding: 2em;
        }

        .page_title {
            padding-bottom: 3em;
        }

        .home {
            color: rgb(0, 0, 0);
        }

        .item {
            padding-bottom: 8em;
        }

        .item>h3,
        .item>img {
            padding-bottom: 2em;
        }

        .item>img {
            display: block;
            margin: auto;
        }

        .img_rep {
            float: left;
            margin-left: 8em;
        }

        .img_rep img {
            width: 150px;
        }

        .rep_com {
            width: 800px;
            float: right;
            white-space: pre-wrap;
        }

        .ci {
            padding-bottom: 30px;
        }

        .ci li {
            padding-bottom: 80px;
        }

        .ci li h3 {
            padding-bottom: 20px;
        }

        .ci_img {
            padding-bottom: 30px;
        }

        .ci_img img {
            padding-left: 20px;
        }

        .space1 {
            float: left;
            padding-left: 20px;
        }

        .space2 {
            float: right;
            padding-left: 20px;
        }

        .space:after {
            content: "";
            display: block;
            clear: both;
            padding-bottom: 30px;
        }

        .trust img {
            display: block;
            margin: 0 auto;
        }

        .to_top {
            position: fixed;
            bottom: 80px;
            right: 80px;
            z-index: 999;
            background-color: rgb(211, 153, 44);
            color: black;
            display: block;
            width: 60px;
            height: 60px;
            line-height: 60px;
            text-align: center;
            font-size: 20px;
            border-radius: 32px;
            visibility: hidden;
            transition-duration: 0.8s;
        }

        .to_top:hover {
            background-color: aqua;
        }

        .to_top.on {
            visibility: visible;
        }


        /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
        $(document).ready(function () {
            $(".to_top").attr("href", location.href);
            $(window).scroll(function () {
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if (tp >= 300) {
                    $(".to_top").addClass("on");
                    $(".to_top").attr("href", location.href);
                } else {
                    $(".to_top").removeClass("on");
                    $(".to_top").attr("href", location.href);
                }
            });
        });
    </script>
</head>

<body>
    <div class="wrap">
        <header class="hd">
		    <%@ include file="nav.jsp" %>        
        </header>
        <div class="content" id="page1">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>비전</option>
                        <option value="company.html#page2">대표이사 메세지</option>
                        <option value="company.html#page3">포스코 CI</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">비전</h2>
                    <ul>
                        <li class="item">
                            <h3>포스코 경영이념</h3>
                            <img src="img/content/company/1.jpg" alt="포스코 경영이념">
                            <p class="pg_com">포스코는 '더불어 함께 발전하는 기업시민'을 추구합니다. 포스코 스스로가 사회 구성원의 일원이 되어 임직원, 주주, 고객, 공급사,
                                협력사, 지역사회 등 여러 이해관계자와 더불어 함께 발전하고, 배려와 공존, 공생의 가치를 함께 추구해 나가고자 합니다.</p>
                        </li>
                        <li class="item">
                            <h3>경영비전</h3>
                            <img src="img/content/company/2.jpg" alt="경영비전">
                            <p class="pg_com">더불어 함께 발전하는 기업시민 의미를 담고 있는 With의 의미를 시각적으로 전달하기 위해 W는 두 사람이 손을 맞잡고 있는 모습을
                                이미지화해 공감적 어울림이 꾸준히 지속됨을 표현하였습니다. 따뜻한 오렌지색은 함께 발전하는 긍정 에너지를 담았습니다.</p>
                        </li>
                        <li class="item">
                            <h3>활동영역</h3>
                            <img src="img/content/company/3.jpg" alt="활동영역">
                            <p class="pg_com">비즈니스 파트너와 함께 Win-Win 할 수 있는 공생가치를 창출하여 강건한 산업생태계를 조성하고, 사회공동체의 일원으로 경제적 이윤
                                창출을 넘어 사회문제 해결에 적극적으로 동참하며, 신뢰와 창의의 조직문화로 임직원이 보람과 행복을 느끼는 회사를 만들어갑니다.</p>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>대표이사 메세지</option>
                        <option value="company.html#page1">비전</option>
                        <option value="company.html#page3">포스코 CI</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">대표이사 메세지</h2>
                    <span class="page_con">
                        <div class="img_rep">
                            <img src="img/content/company/4.png" alt="대표이사">
                        </div>
                        <div class="rep_com">
                            <p>
                                <h3>제1대 포스코 대표이사 취임사</h3>
                                <h4>사랑하는 포스코 임직원 여러분!</h4>

창립이래 포스코와 함께 해온 고객사, 공급사, 협력사
그리고 지역사회 관계자 여러분!

오늘 우리는 지주회사 전환과 함께
‘지속 가능한 100년 포스코’ 를 향한
역사적인 새로운 출발점에 서 있습니다.

저는 그 출발의 순간에
새로운 철강회사 포스코의 초대 대표이사 라는 중책을 맡게 되어
가슴 벅찬 영광과 함께 무한한 책임감을 느낍니다.

<h4>포스코 임직원 여러분!</h4>
50년의 성공을 넘어
100년 기업으로 가고 있는 우리는
그 어느 때보다도 급변, 불확실, 복잡, 모호성이 혼재된
어려운 경영환경에 놓여있습니다.

저탄소·친환경 시대로의 대전환,
안전에 대한 높은 수준의 경영 요구,
미·중 갈등과 함께 고조되는 글로벌 공급망 재편성,
AI/Big Data를 기반으로 Digitalization가속화 등
산업, 사회, 경제 全 분야의 거대한 Transition요구에 직면하여
그 어느 때보다도 새로운 경영 변화가 절실한 때입니다.

이제 과거의 경영방식으로는 앞으로의 지속가능성을
담보할 수 없는 시대가 빠른 속도로 다가오고 있습니다.

우리가 수십 년간 쌓아온 철강경쟁력을 유지하기 위해서는
더욱 Speedy한 의사결정과 치밀한 경영관리가 필요하며,
사업체제도 회사의 모든 역량을 철강사업에 집중해서
실행력을 배가할 수 있도록 바꿔야 합니다.
금번 지주회사 전환과 함께
철강을 사업회사로 분리한 배경이라 하겠습니다.

포스코 창업 초기 회사 내 모든 자원을 집중해
단기간 안에 세계적인 철강사로 발돋움한 것처럼,
이제 철강 사업회사 체제로 전문성을 재강화함으로써
제 2의 도약을 위한 준비가 되었습니다.

저는 오늘 우리가 나아가고자 하는 포스코의 모습을
안전과 친환경을 근간으로 하는 세계 최고의 경쟁력 보유 철강사!
직원의 행복과 고객사, 공급사, 지역사회 등 이해관계자와
더불어 함께 발전하는 기업시민 철강사!

그리고 이를 통한
지속 가능한 100년 철강기업 POSCO로 제시하고자 합니다.

이를 위해,
첫째, ‘재해 없는 안전 사업장 포스코’를 실현하겠습니다.

안전에 대한 원칙은 어떤 경우에도 양보 되어서는 안되는
최우선 가치입니다.

全 임직원이 ‘모든 재해는 막을 수 있다’ 는 마음가짐을 가지고
현장 내 위험요소를 발굴하고 개선하는 프로세스를
정착시킴과 동시에, 안전보건시스템을 고도화시켜야 하겠습니다.

생산과 직결되지 않는 설비라 하더라도,
안전에 잠재적 위해가 없도록 투자 재원도
최우선적으로 배분하도록 하겠습니다.

관계사 안전 수준이 우리 회사의 안전 수준입니다.
직영, 협력, 용역 직원에 구분없이
모든 인간의 생명이 존엄 하듯이
포스코 사업장에서 근무하는 모든 이들에게는
포스코와 동일 수준의 안전교육과 훈련을 제공하여
안전 역량을 끌어올리도록 하겠습니다.
여러분들께서도 안전 활동에 적극 동참해주시길 바랍니다.

둘째, 2050 탄소중립 목표 달성 위한
저탄소·친환경 대응체제를 구축하겠습니다.

HMR 저감 등 친환경 기술 및 조업 경쟁력을 확보하고,
시장과 고객의 높은 저탄소 제품 요구에
탄력적으로 대응하기 위해 재생에너지 확대, 전기로 신설 등을
추진하고, 수소환원제철 기술개발을 본격화하여
2050 탄소 중립 목표를 달성해 나가겠습니다.

이와 병행하여 스크랩, HBI 등 필요한 철원류를
선제적으로 확보하는 등 저탄소 조업 체제를
차질없이 준비해야겠습니다.

아울러 우리 지역사회 주민들이 세계 어느 제철소보다
쾌적한 대기환경에서 생활할 수 있도록
금년부터 원료야드 밀폐화 작업을 본격적으로 착수하고,
모든 먼지 발생 시설에 집진 설비를 구비토록 하여
세계 최고 수준의 친환경 제철소를 구현하도록 하겠습니다.

셋째, 세계 최고의 高수익 Smart 제철소를 구현하겠습니다.

고효율 Smart 프로세스 구축을 통해
생산성과 실수율을 향상시키고,
발전 효율 향상 및 가스회수 증대를 위한 설비 투자로
에너지 비용을 절감하고,
공정간 관통 최적 프로세스 구축과
Digital Twin 등 Smart Factory 2.0 구현을 통해
어떠한 불황도 이겨낼 수 있는 원가경쟁력을 갖추도록 하겠습니다.

마케팅 부분에서는
저가 수입재에 대응하기 위한
K-Steel 캠페인 확산, 비관세 장벽 구축 등으로
내수 Market Share를 견고히 하고,
PosMAC, Gigasteel, INNOVILT, 高Mn강 등
포스코 특화 제품의 판매를 확대하여
수익력을 한층 강화해야 하겠습니다.

아울러 자재, 설비, 원료 등에 대해서는
단일국가 소싱 품목의 공급망을 다변화하여
비용 절감 및 글로벌 조달 Risk에 대비하고,
JIT 구매체계 확대 등 자재 조달방식 혁신으로
구매 경쟁력을 제고해야 하겠습니다.

해외사업에서는
인니,인도,미국 등 핵심시장에서 전략적 파트너사와 협력을 통해 상·하공정 투자를 확대해 나감으로써
세계적으로 점증하는 보호무역주의의 파고를 넘고,
Global 시장에서의 리더십을 강화하도록 하겠습니다.

넷째, 창의와 신뢰의 포스코로 거듭나기 위해 기업문화를
지속적으로 혁신해 나가겠습니다.

불확실하고 급변하는 시대를 헤쳐나가기 위해서는
기존 중후장대한 산업특성에서 기인한
경직된 조직문화에서 탈피하여
Soft, Skill, Smart 의 3S의 기업문화를 구축해야 합니다.

유연하고 능동적인 Soft 기업문화를 구축하고,
AI 등 IT 신기술 관련 Skill을 보유한 인재를 육성하고,
디지털 기술에 기반한
현장과 사무실 업무의 Smart화를 추진해야 하겠습니다.

이제 우리는 과거의 타성에서 벗어나
모든 업무에 있어서 원점에서 생각하고,
전사 최적화 관점에서 조직간 Silo를 타파하여
창의와 협업 기반의 성과 창출 문화로 변화해야 합니다.

이러한 기업문화 혁신을 통해
포스코의 사업장을 모두가 행복한 일터로 만들고,
기업시민 경영 이념을 문화 정체성으로 정착시켜
100년 기업 포스코의 초석을 다지도록 합시다.

다섯째, 이해관계자와의 상생을 통해
기업시민 기반의 ESG 경영을 정착화 시키겠습니다.

협력사와의 ‘공동근로복지기금’ 조성을 통해
협력사에 대한 처우를 개선해 나가고
중소 공급사와의 ‘베네핏 쉐어링’ 제도를 더욱 확대하여
상생과 나눔의 일터를 만들고
더 나아가 강건한 산업 생태계 구축에 기여토록 하겠습니다.

앞으로 철강업 특성상 국내 최대 수소 수요처가 될 기업으로서
다가오는 수소 수요 확대에 대비하여 부생 수소 생산체계를 구축하고
글로벌 친환경 자동차 수요확대에 대응한 전기강판 설비 신설 등
미래선도사업에 맞춘 지속적인 대규모 투자로
지역사회 경제 발전에 이바지하며 함께 성장해 나갈 것입니다.
사랑하는 임직원 여러분!

저는 오늘 여러분들과
철강회사 포스코의 역사적인 새로운 출발을 함께 합니다.

지주회사 전환이라는 새로운 경영체제가 성공적으로 안착 되도록
우리 포스코가 핵심산업으로서 계속해서 든든한 버팀목이 되어야하고
다른 사업회사들을 견인할 수 있는 롤모델이 되어야 하겠습니다.

무에서 유를 창조한 선배들로부터 물려받은
우리 포스코인의 뜨거운 열정을 가지고
이 대변혁의 시기를 오히려 기회로 삼아
다시 한번 도약합시다.

앞으로 50년 뒤 후배들에게 지금보다 더 자랑스러운 포스코를
물려줄 수 있도록, 긍지와 자부심을 가지고
우리 모두 함께 앞으로 나아갑시다.

감사합니다.



                                                                                    2022년 3월 2일
                                                                                    포스코 대표이사 부회장 김학동

                            </p>
                        </div>
                    </span>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>포스코 CI</option>
                        <option value="company.html#page1">비전</option>
                        <option value="company.html#page2">대표이사 메세지</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">포스코 CI</h2>
                    <ul class="ci">
                        <li>
                            <h3>코퍼리트 워드마크</h3>
                            <div class="ci_img">
                                <img src="img/content/company/5.png" alt="코퍼리트 워드마크">
                                <img src="img/content/company/6.png" alt="코퍼리트 워드마크2">
                            </div>
                            <p class="pg_com">영문 POSCO의 다섯 개 알파벳은 ‘S’를 중심으로 균형적으로 배치해, 내·외부 조화와 화합을 지향하는 기업철학을 상징적으로
                                표현합니다. 동심원 형태의 글자는 외부환경에 적극적으로 대처하고 끊임없는 혁신을 통해 영속적으로 발전하는 포스코의 미래상을 반영하였습니다.</p></span>
                        </li>
                        <li>
                            <h3>워드마크 공간규정</h3>
                            <div class="space">
                                <div class="space1">
                                    <h4>기본 공간 규정</h4>
                                    <img src="img/content/company/7.png" alt="기본 공간 규정">
                                </div>
                                <div class="space2">
                                    <h4>제한 공간 규정</h4>
                                    <img src="img/content/company/8.png" alt="제한 공간 규정">
                                </div>
                            </div>
                            <p class="pg_com">POSCO 워드마크를 박스형의 제한된 공간에 적용할 때는 아래와 같이 좌우각이 시각 보정된 공간 규정안을 따릅니다.</p>
                        </li>
                        <li>
                            <h3>그래픽 모티프</h3>
                            <div class="trust">
                                <img src="img/content/company/9.png" alt="그래픽 모티프">
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <script>
            var sel = document.getElementsByClassName("sel");
            for (var i = 0; i < sel.length; i++) {
                sel[i].addEventListener("change", function () {
                    location.href = this.value;
                });
            }
        </script>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    <a href="" class="to_top">↑</a>
    <!--.to_top.on-->
</body>

</html>