<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="ft_wrap">
    <div class="ft_logo"><img src="img/logo.svg" alt="하단로고"></div>
    <div class="mid_box">
        <nav class="fnb">
            <a href="member01.jsp" class="dpc">개인정보처리방침</a>
            <a href="member02.jsp" class="dpc">이용약관</a>
            <a href="member03.jsp" class="dpc">이메일무단수집거부</a>
        </nav>
        <p class="addr">
            POSCO | 대표이사: 김학동 | 사업자등록번호: 506-81-00017<br>
            (우)37859 경상북도 포항시 남구 동해안로 6261(포항시 남구 괴동동1) | 대표전화: 054-220-0114, 02-3457-0114</p>
        <p class="copyright">(c) POSCO, All rights reserved.</p>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">패밀리사이트</option>
            <option value="https://www.posco-inc.com:4453/poscoinc/kor/s91e00000000.jsp">포스코홀딩스</option>
            <option value="https://www.poscosteeleon.com/kr/main.do">포스코스틸리온</option>
        </select>
    </div>
    <script>
        function sel_link(sel) {
            location.href = sel.value;
        }
    </script>
</div>