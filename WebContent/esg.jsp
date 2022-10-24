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
            padding-top: 1em;
        }

        .home {
            color: rgb(0, 0, 0);
        }

        .c {
            padding-top: 70px;
            padding-bottom: 60px;
        }

        .c h3,
        .c>p {
            padding-bottom: 30px;
            white-space: pre-wrap;
        }

        .c ol li {
            padding-bottom: 15px;
        }

        .c ol li h4 {
            color: rgb(73, 73, 194);
            padding-bottom: 10px;
        }

        .e_link {
            display: block;
            width: 165px;
            margin-top: 5px;
            padding: 10px;
            border: 0.15rem solid rgb(73, 73, 82);
            color: black;
            font-size: 13px;
        }

        .s {
            padding-top: 40px;
            padding-bottom: 60px;
        }

        .s h3 {
            padding-bottom: 30px;
        }

        .s p {
            white-space: pre-wrap;
        }

        .s2 { padding-top: 40px;}
        .s3 { padding-top: 30px;}
        .s3 li { padding-top: 20px;}
        .s3 li img { padding-top: 20px;}
        .s3 li h5 { font-size: 0.9em; color: rgb(81, 81, 196);}

        .g img {
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
        $(document), ready(function () {
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
                <img src="img/baner/esg.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>ESG</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>Environment</option>
                        <option value="esg.html#page2">Social</option>
                        <option value="esg.html#page3">Government</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">Environment</h2>
                    <div class="c">
                        <h3>환경 관리 가이드 라인</h3>
                        <p>포스코는 기업시민 경영이념을 바탕으로, 사회적 관심이 높은 기후변화, 미세먼지, 폐기물, 화학물질 등 환경 이슈에 주도적으로 대응해 나가고 있습니다. 기업시민헌장,
환경경영방침, 관련 사규 및 내부지침에 의거하여 환경 가이드라인을 수립하였습니다.
사업/생산 과정에서 환경에 미치는 부정적 영향을 최소화하기 위하여 다음의 활동을 추진하고 그 범위를 공급망 및 비즈니스 파트너로 확대하고 있습니다. '10년 1월 '환경메뉴얼'을 최초 수립하였으며, '19년 6월 '포스코그룹 환경에너지 통합경영 방침'으로 개정하여 준수하고 있습니다. 또한 매년 환경관리 관련 국제 표준인 ISO 14001, 50001 획득 후 매년 갱신중입니다.

이제 회사는 삶의 질과 관련하여 높아지는 국민의 눈높이에 부응하고, 사회적 관심이 높은 기후변화, 미세먼지, 폐기물, 화학물질 등 환경 이슈에 더욱 주도적으로 대응해 나가고 있습니다. 이에 기업시민헌장, 환경경영방침, 관련 사규 및 내부지침에 의거하여 환경 가이드라인을 수립하였으며, 이를 통해 철강업의 기본 책무인 저탄소·친환경 구현을 위해 노력하고자 합니다.

포스코는 다음과 같은 활동을 통해 사업/생산 과정에서 환경에 미치는 부정적 영향을 최소화하고, 그 범위를 공급망 및 파트너로 확대하고 있습니다.</p>
                        <ol>
                            <li>
                                <h4>사업장 환경 관리</h4>
                                <p>생산 및 사업장의 환경관리를 위하여 KPI 등 목표 관리, 교육/훈련, 지침 수립 및 관리, 내부 심사 등의 프로세스 절차와 각 부분별 표준(환경에너지
                                    통합경영 방침, 대기환경관리, 폐기물 관리 등)를 통해 관리하고 있습니다. 특히, 친환경 생산공정과 최적 방지기술 적용으로 오염물질 배출을 최소화하고
                                    있습니다.</p>
                            </li>
                            <li>
                                <h4>생산 운영 및 유지보수</h4>
                                <p>포스코는 생산시설 가동 및 유지·보수 시 발생되는 환경오염을 최소화하기 위해 환경경영 매뉴얼을 제정하고 운영 중에 있습니다. 각 생산 공정별 설비 특성에
                                    맞춰 유지 보수하며, 설비 운영시 발생되는 환경영향을 모니터링 및 개선하도록 관리하고 있습니다.</p>
                            </li>
                            <li>
                                <h4>제품 개발, 서비스 및 물류</h4>
                                <p>저탄소 경제로의 전환 과정 속 위기와 기회요인을 인지하고, 친환경 제품 및 부산물의 공급 확대를 통해 기후변화 대응을 위한 사회적 탄소 감축 노력을 하고
                                    있습니다. 자동차 경량화를 가능케하는 고장력 강판, 고효율 전기강판 등 저탄소 철강 제품 포트폴리오를 확대하고 있습니다. 또한 배터리 핵심소재인 리튬,
                                    양/음극재 제품을 연구/개발하고 있습니다. 또한 포스코는 운송과정에서 발생될 수 있는 환경 Risk를 최소화 할 수 있도록 지침서 등을 통해 관리하고
                                    있습니다.</p>
                            </li>
                            <li>
                                <h4>폐기물 관리</h4>
                                <p>포스코는 폐기물의 발생 단계에서 최종 폐기까지의 과정을 폐기물 관리지침으로 제정하여 관리하고 있습니다. 관리지침을 통해 작업 범위, 용어 정의, 책임과
                                    권한, 폐기물 분리수거함 및 보관시설, 폐기물 발생, 수거, 보관 및 처분,환경오염 사고 발생시 조치, 위탁계약 및 모니터링 등을 관리하고 있습니다.
                                </p>
                            </li>
                            <li>
                                <h4>공급업체 선정 및 공급사 ESG 평가</h4>
                                <p>포스코는 외부 업체(공급·계약·서비스 제공) 선정 시 환경관리 수준 등 ESG 평가 항목을 반영함으로써 환경 영향을 최소화하고 있습니다. 또한 환경,
                                    인권 등 UN Global Compact 규범에 기반한 '포스코그룹 공급사 행동규범'을 전 공급사가 동의 및 준수하도록 하고 있습니다. 또한 매년
                                    공급사 성과평가를 통해 공급망 전체의 환경 Risk를 선제적으로 관리하고 있습니다.</p>
                            </li>
                            <li>
                                <h4>신규 프로젝트 및 인수/합병</h4>
                                <p>포스코는 신규 사업/투자 검토과정에 ESG 정량/정성적 기대효과 및 투자 리스크/대응방안을 검토하도록 하고 있습니다. 사업 환경관리계획 및 환경영향평가
                                    등을 통해 신규 사업의 환경 Risk를 줄이는 노력을 하고 있습니다. 또한 포스코는 인수·합병을 검토하면서, 사전 실사를 통해 환경을 포함한 ESG
                                    리스크를 파악하여 사전 대응하고 있습니다.</p>
                            </li>
                            <a class="e_link"
                                href="https://www.posco.co.kr/docs/kor6/jsp/esg/report/220610-POSCO_ESG_Policies&Positions.pdf">ESG
                                Policies & Positions <img src="img/content/esg/2.svg" alt=""></a>
                        </ol>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/esg.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>EGS</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>Social</option>
                        <option value="esg.html#page1">Environment</option>
                        <option value="esg.html#page3">Government</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">Social</h2>
                    <div class="s">
                        <div class="s1">
                            <h3>인권경영 가이드라인</h3>
                            <p>포스코는 세계인권선언, UN 기업과 인권에 관한 이행원칙, UN글로벌콤팩트, OECD 다국적기업 가이드라인 등 국제적으로 통용되는 인권관련 국제기준을 존중하고 지지한다.

모든 인간은 존엄하게 대우받을 권리가 있으며, 이러한 권리에는 생명과 신체적 안전, 사상/표현/종교의 자유, 결사의 자유, 일과 가정생활의 균형, 사생활 보장, 식량과 물 안보 확보, 고문/노예제도 또는 강제노동으로부터의 자유, 공정하고 품위 있는 근로 조건에 대한 권리, 차별금지 등이 포함되어 있다. 이에 포스코는 2003년 인권경영 정책을 반영한 윤리규범을 선포한 이래 타인의 인권을 침해하는 것을 방지하고 회사의 경영활동 과정에서 인권에 대한 부정적 영향의 방지와 해결을 위해 적절한 조치를 취하고자 노력하고 있으며 2019년 기업시민헌장을 선포하면서 인권경영의 의지를 더욱 공고히 하고 있다.</p>
                        </div>
                        <div class="s2">
                            <h4>인권경영 기본 방침</h4>
                            <p>포스코는 인권존중 책임을 다하여 이해관계자들의 기대에 부응하고자 인권경영과 관련하여 다음의 권장사항을 준수한다.

① 포스코가 기업 활동을 하는 모든 곳에서 적용되는 법규와 국제적으로 인정된 글로벌 인권기준을 준수한다.
② 현지국의 상반되는 규제에 직면하는 경우, 글로벌 인권기준을 준수할 수 있는 방안을 모색한다.
③ 심각한 인권침해를 야기할 수 있는 리스크에 대해서는 회사의 중요한 경영 이슈로 다룬다.</p>
                        </div>
                        <ol class="s3">
                            <li>
                                <h5>인권문화 정착을 위한 리스크 관리</h5>
                                <img src="img/content/esg/3.png" alt="">
                                <p>포스코는 모든 임직원의 인권을 존중하고 리스크 예방 및 개선을 위해서 인권관련 국제기준과 사규에 따른 인권경영 지침과 리스크 관리 시스템을 마련하고 그 결과를 공유한다.

① 회사의 경영활동이 인권에 부정적 영향을 미치는 원인을 미연에 방지하고, 발생한 경우 그 문제를 적절히 다룬다.
② 회사가 직접적으로 인권 침해를 초래하지 않았더라도, 거래 회사의 경영활동으로 인해 인권관련 부정적 영향이 발생하지 않도록 예방과 완화하는 노력을 한다.</p>
                            </li>
                            <li>
                                <h5>인권존중 책임</h5>
                                <p>포스코 인권정책의 적용 대상은 포스코 임직원이다. 또한 포스코는 공급사, 협력사 등 파트너사와 거래시에도 기업시민헌장에 기반한 인권경영 정책을 따르며, 거래회사가 인권과 관련하여 국제기준과 포스코 인권경영 정책을 존중하도록 제안하고 필요 시 지원한다.</p>
                            </li>
                            <li>
                                <h5>기본원칙</h5>
                                <p>① 차별/괴롭힘 금지
- 포스코는 인종, 국적, 성, 연령, 학력, 종교, 지역, 장애, 결혼여부, 성 정체성 등을 이유로 고용, 승진, 교육, 보상, 복리후생 등 근로조건에 차별하지 않는다.
- 포스코는 인간의 존엄을 유지할 수 있는 생활을 영위할 수 있도록 적정한 근로시간 유지 등 고용조건을 보장하며, 임직원에게 합당한 보수와 교육의 기회를 제공하고 다양한 문화적 차이를 존중하여 근로환경을 유지한다.
- 포스코는 개인의 인권을 침해하는 성희롱 행위를 포함하여, 다른 사람에게 불쾌감을 주는 언어적, 육체적, 시각적 행동을 하지 않는다.

② 강제노동 및 아동노동 금지
- 포스코는 정신적·육체적 강요에 의해 비자발적으로 수행되는 업무가 발생 하지 않도록 한다.
- 포스코는 미성년자의 노동조건과 최저 노동의 연령 기준에 대해 국가별 노동법과 국제기준을 준수한다.

③ 결사의 자유 및 단체교섭권 보장
- 포스코는 인권정책의 기반이 되는 헌법과 노동관계법을 준수하며, 임직원의 권리를 존중하고 보장하기 위해 노력한다.

④ 산업안전 보장
- 포스코는 모든 임직원이 안전한 근로환경에서 근무할 수 있도록 하는 안전 문화를 구축하고, 발견된 위험요소에 대해서는 적절한 조치를 취한다.

⑤ 환경권 보장
- 포스코는 환경·에너지를 경영활동의 주요 요소로 인식하고, 더불어 함께 발전하는 기업시민으로서 지속가능한 저탄소 친환경 경제 구현을 위하여 노력한다.
- 포스코는 천연자원, 부산물 등을 효율적으로 활용하여 자연 생태계의 복원과 생물 다양성 보전을 위해 노력한다.

⑥ 지역주민 인권 보호
- 포스코는 회사의 경영활동으로 인하여 지역 주민의 환경, 안전보건, 거주의 자유 등 인권이 침해되지 않도록 관리한다. 또한, 관련 법규/규정에 따라 의견을 수렴하며, 지역사회의 자율성과 전통적 가치를 존중한다.

⑦ 고객 인권보호
- 포스코는 고객의 생명, 건강, 안전을 해치지 않기 위하여, 제품과 서비스를 제공함에 있어서 법령의 기준에 따라 필요한 주의를 기울인다.

⑧ 책임있는 공급망 관리
- 포스코는 모든 주요 공급사, 협력회사의 인권보호에 대한 의무 이행을 준수하도록 요구한다.</p>
                            </li>
                        </ol>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/esg.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>EGS</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>Government</option>
                        <option value="esg.html#page1">Environment</option>
                        <option value="esg.html#page2">Social</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">Government</h2>
                    <div class="g">
                        <img src="img/content/esg/1.png" alt="Government">
                    </div>
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