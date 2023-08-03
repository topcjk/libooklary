drop sequence category_num;
drop sequence member_num;
drop table pr3basket;
drop sequence order_number;
drop table pr3order;
drop table pr3board;
drop sequence pr3board_board_num;
drop table pr3member;
drop table pr3book;
drop table pr3category;





--------------------------카테고리 테이블 생성--------------------------
create table pr3category(
category_code number(10),
category_name varchar2(200) constraint pr3category_category_name_pk primary key);
--category_num생성
create sequence category_num
START WITH 1
    INCREMENT BY 1
    MAXVALUE 10000
    MINVALUE 1
    CYCLE;

--카테고리테이블 초기값.
insert into pr3category
values(category_num.nextval, 'IT');
insert into pr3category
values(category_num.nextval, '역사');
insert into pr3category
values(category_num.nextval, '인문');
insert into pr3category
values(category_num.nextval, '문학');
insert into pr3category
values(category_num.nextval, '경제');
insert into pr3category
values(category_num.nextval, '게임');
insert into pr3category
values(category_num.nextval, '고전');
insert into pr3category
values(category_num.nextval, '과학');
insert into pr3category
values(category_num.nextval, '만화');
insert into pr3category
values(category_num.nextval, '수험');
insert into pr3category
values(category_num.nextval, '심리');
insert into pr3category
values(category_num.nextval, '아동');
insert into pr3category
values(category_num.nextval, '에세이');
insert into pr3category
values(category_num.nextval, '자기계발');
insert into pr3category
values(category_num.nextval, '정치');
insert into pr3category
values(category_num.nextval, '생활');
commit;



-------------------------------------------도서테이블 생성------------------------

create table pr3book(
book_isbn varchar2(200) constraint pr3book_book_isbn_pk primary key,
book_name varchar2(200),
book_writer varchar2(100),
book_price number(10),
book_pub varchar2(100),
book_sub varchar2(500),
book_img varchar2(20),
book_category varchar2(100)constraint pr3book_category_name_fk references pr3category(category_name),
book_qry number(10),
book_point number(10));

-------------------도서데이터 입력-------------

insert into pr3book 
values('9788932473901', '이기적 유전자', '리처드 도킨스', 24700, '을유문화사', '독특한 발상과 놀라운 주장으로 40여 년간 수많은 찬사와 논쟁의 중심에 선 과학 교양서의 바이블!', '21', '인문', 100, 240);
insert into pr3book
values('9788937417375', '일이란 무엇인가', '고동진', 16200, '민음사', '오직 일로 성공하고자 하는 사람들을 위한 질문', '22', '자기계발', 100, 170);
insert into pr3book
values('9788952247254', '변신/소송', '프란츠 카프카', 11700, ' 살림', '카프카의 절망 속 질문! 벌레같지 않은 삶, 인간다운 삶을 찾아서', '23', '문학', 100, 160);
insert into pr3book
values('9788972757573', '라플라스의 마녀', '히가시노 게이고', 15100, '현대문학', '인류의 미지의 영역에 도전한 히가시노 게이고의 80번째 작품!', '24', '문학', 100, 150);
insert into pr3book
values('9791167901484', '나미야 잡화점의 기적', '히가시노 게이고', 13050, '현대문학', '히가시노 게이고의 가장 경이로운 대표작 국내 출간 10주년 기념 무선 보급판 발간' ,'25', '문학', 100, 130);
insert into pr3book
values('9788983925008', '다빈치코드 1', '댄 브라운', 10800, '문학수첩', '새로운 번역으로 만나는『다빈치 코드』' , '26', '문학', 100, 110);
insert into pr3book
values('9788983925015', '다빈치코드 2', '댄 브라운', 10800, '문학수첩', '새로운 번역으로 만나는『다빈치 코드』 그 두번째 내용' , '27', '문학', 100, 110);
insert into pr3book
values('9788954617437', '화차', '미야베 미유키', 14400, '문학동네', '현대사회의 맹점과 어둠을 그려낸 미야베 미유키의 대표작!', '28', '문학', 100, 140);
insert into pr3book
values('9791158741907', '챗GPT, 질문이 돈이 되는 세상', '전상훈', 16950, '미디어숲', '챗GPT가 바꾸는 세상은 우리의 상상을 뛰어넘는다 국내 최고 미래전략 전문가의 선제적 패러다임 제시!' ,'29', '경제', 100, 170);
insert into pr3book
values('9788936434618', '위자드 베이커리', '구병모', 12600, '창비', '당신에게도 되감고 싶은 시간이 있습니까? 50만 부 판매 베스트셀러 위험한 소원이 이루어지는 곳, 위저드 베이커리', '30', '문학', 100, 170);
insert into pr3book
values('9788937461125', '시계태엽 오렌지', '앤서니 버지스', 12600, '민음사', '인간의 자유 의지와 도덕의 의미를 묻는 20세기의 문제작 스탠리 큐브릭의 영화의 원작 소설', '31', '문학', 100, 130);
insert into pr3book
values('9788917238532', 'ETS 토익 정기시험 기출문제집', 'ETS', 16020, 'YBM', '토익은 기출이 답이다! 기출문제 한국 독점출간! 정기시험 기출문제와 성우음성으로 목표점수 적중' , '32', '수험', 100, 160);
insert into pr3book
values('9791192579504', '바다가 들리는 편의점', '마치다 소노코', 14400, '모모', '오늘도 변함없이 불을 밝히고 손님을 맞는 이곳에서 서로 다른 각자가 함께 행복해지는 이야기가 펼쳐진다.', '33', '문학', 100, 150);
insert into pr3book
values('9791191891355', '마음의 자유', '정윤', 15300, '북로망스', '내가 아닌 것들에 마음 쓰지 않고 살아갈 수 있도록 불안한 마음의 균형을 잡아주는 단단한 말들', '34', '에세이', 100, 150);
insert into pr3book
values('9788972917816', '부서진 우울의 말들', '에바 메이어르', 12600, '까치', '10대 시절부터 우울증을 겪은 저자의 내밀한 고백이자 귀퉁이의 세계에서 끌어올린 우울의 기록들' ,'35' ,'에세이', 100, 130);
insert into pr3book
values('9788965965046', '도파미네이션', '애나 렘키', 16200, '흐름출판', '쾌락과 고통의 지휘자 도피만을 둘러싼 위험하고도 매혹적인 이야기', '36', '과학', 100, 160);
insert into pr3book
values('9791167741066', '메타 인지의 힘', '구본권', 16200, '에크로스', '인간의 가장 고등한 지적 능력이자 기계와 구별되는 유일한 인지 능력, 메타인지에 관한 종합교양서. ', '37', '인문', 100, 160);
insert into pr3book
values('9791141108601', '지브리 입체건축전 도록', '스튜디오 지브리', 27000, '학산문화사', '부산시립미술관에서 개최된 〈스튜디오 지브리 입체건축전〉의 도록이 독자들의 성원에 힘입어 복각판으로 다시 발행된다.', '38', '만화', 100, 270);
insert into pr3book
values('9791197919848', '오타니 쇼헤이의 쇼타임', '코다마 미츠오', 15750, '차선책', '인생은 오타니 쇼헤이처럼 국내 최초 공개 오타니 쇼헤이의 성공법!', '39', '자기계발', 100, 160);
insert into pr3book
values('9791156757344', '우울할 땐 뇌과학', '앨릭스 코브', 15300, '심심', '마음의 문제를 객관적이면서도 논리적인 방법을 통해 도출된 연구 결과로 보여준다!', '40', '과학', 100, 150);
commit;

insert into pr3book values ('9788996991342', '미움받을 용기', '기시미 이치로', 14900, '인플루엔셜', '심리학 제3의 거장 ‘아들러’, 용기의 심리학을 이야기하다!', '1', '심리', 100, 150);
insert into pr3book values('9791168340787', '미움받을 용기2', '기시미 이치로', 15900, '인플루엔셜', '미움받을 용기를 가졌다면 이제 사랑할 용기를 가져라!\n' || '여전히 우리의 상식을 뛰어넘는, 그러나 더 구체적이고 실천적인 해법', '2', '심리', 100, 160);
insert into pr3book values('9788960510197', '나쁜 사마리아인들', '장하준', 14000, '부키', '우리 시대의 각종 현안에 관한 해답!\n' || '이 책은 나쁜 사마리아인들이 가난한 나라에 해를 끼치는 일을 그만두게 할 수 있는가에 관해 이야기한 책으로, 세계화와 개방만을 강조하는 신자유주의적 조류에 대한 반박논리를 제공한다.', '3', '경제', 100, 140);
insert into pr3book values('9788960519794', '장하준의 경제학 레시피', '장하준', 18000, '부키', '팍팍한 살림살이와 불안한 경제를 어떻게 헤쳐나갈 것인가?\n' || '세계적 석학 장하준, 더 공정하고 다 함께 잘사는 길을 제시하다!', '4', '경제', 100, 180);
insert into pr3book values('9788937443848', '이방인', '알베르 카뮈', 10000, '민음사', '20세기의 지성이자 실존주의 문학의 대표 작가, 알베르 카뮈\n' || '억압적인 관습과 부조리를 고발하며 영원한 신화의 반열에 오른 작품', '5', '고전', 100, 100);
insert into pr3book values('9788965700036', '아프니까 청춘이다', '김난도', 14000, '쌤엔파커스', '인생의 홀로서기를 시작하는 청춘을 위한 김난도 교수의 따뜻한 멘토링!', '6', '에세이', 100, 140);
insert into pr3book values('9788998046682', '하늘과 바람과 별과 시', '윤동주', 9800, '소와다리', '<하늘과 바람과 별과 시> 1955년 증보판 초판본.', '7', '문학', 100, 100); 
insert into pr3book values('9788937460449', '데미안', '헤르만 헤세', 8000, '민음사', '불안한 젊음에 바치는 헤르만 헤세의 영혼의 이야기!', '8', '고전', 100, 80);
insert into pr3book values('9788937833663', '돈으로 살 수 없는 것들', '마이클 샌델', 16000, '와이즈베리', '시장은 과연 항상 옳을까? 모든 것을 사고파는 사회를 마이클 샌델과 함께 해부한다!', '9', '경제', 100, 160);
insert into pr3book values('9788937837654', '정리하는 뇌', '대니얼 J. 레비틴', 22000, '와이즈베리', '정보, 생각, 삶을 정리정돈하는 기술!', '10', '과학', 100, 220);
insert into pr3book values('9788984355811', '조선의 밥상', '김상보', 17800, '가람기획', '조선시대 사람들은 어떤 음식을 먹었으며,\n' || '조선 민중의 삶 속에서 음식 문화는 어떻게 전개되어 왔을까?', '11', '역사', 100, 180);
insert into pr3book values('9788962622508', '떨림과 울림', '김상욱', 15000, '동아시아', '물리학자 김상욱이 바라본 우주와 세계 그리고 우리\n' || '물리라는 언어를 통해 세계와 우리 존재를 바라보는 다른 눈을 뜨게 하다!', '12', '과학', 100, 150);
insert into pr3book values('9788962624670', '과학이 필요한 시간', '궤도', 16000, '동아시아', '인공지능부터 양자역학까지, 초광속 · 초밀착 과학 안내서', '13', '과학', 100, 160);
insert into pr3book values('9788957336861', '크리톤', '플라톤', 10000, '아카넷', '소크라테스는 악법도 법이다라고 말하지 않았다. 그의 발언과 사상에 관한 논란의 진원, 크리톤', '14', '인문', 100, 100);
insert into pr3book values('9788937416170', '열린사회와 그 적들 1', '칼 포퍼', 25000, '민음사', '전체주의에 대항한 통렬한 비판서!', '15', '인문', 100, 250);
insert into pr3book values('9788932920221', '좀머 씨 이야기', '파트리크 쥐스킨트', 14800, '열린책들', '시대와 세대를 뛰어넘어 공감을 일으키는 쥐스킨트의 대표작', '16', '문학', 100, 150);
insert into pr3book values('9788991290167', '일리아스', '호메로스', 38000, '숲', '고대의 하늘로 맑게 울려 퍼진 호메로스의 이야기', '17', '인문', 100, 380);
insert into pr3book values('9788994492032', 'Java의 정석', '남궁성', 30000, '도우출판', '자바의 기초부터 실전활용까지 모두 담다!', '18', 'IT', 100, 300);
insert into pr3book values('9791162245651', '혼자 공부하는 파이썬', '윤인성', 22000, '한빛미디어', '혼자 해도 충분하다! 1:1 과외하듯 배우는 파이썬 프로그래밍 자습서', '19', 'IT', 100, 220);
insert into pr3book values('9788934972464', '사피엔스', '유발 하라리', 26800, '김영사', '인공지능의 시대, 우리가 알아야 할 것은 코딩보다 인간의 마음.', '20', '인문', 100, 270);
commit;


insert into pr3book values('9788954699914', '하얼빈', '김훈', 14400, '문학동네', '안중근의 역사 이야기', '41', '역사', 100, 140);
insert into pr3book values('9791161571379', '불편한 편의점2', '김호연', 12600, '나무옆의자', '편의점에서 일어나는 사람냄새 나는 이야기', '42', '문학', 100, 130);
insert into pr3book values('9791157062645', '계속 가보겠습니다', '임은정', 16200, '메디치미디어', '검찰 치부를 들어내는 내부 고발 검사 임은정 이야기', '43', '정치', 100, 160);
insert into pr3book values('9788993178692', '지리의 힘', '팀 마샬', 18000, '사이', '지리는 어떻게 개인의 운명을, 세계사를, 세계 경제를 좌우하는가', '44', '경제', 100, 180);
insert into pr3book values('9791191998085', '차이나 쇼크, 한국의 선택', '한청훤', 15300, '사이드웨이', '중국이라는 지정학적 대지진이 한국을 뒤흔드는 지금, 임박한 위기 앞에서 펼쳐야 할 바로 이 책', '45', '경제', 100, 153);
insert into pr3book values('9791158883591', '부자 아빠 가난한 아빠 ', '로버트 기요사키', 15300, '민음인', '돈과 투자의 흔들리지 않는 기준이 되어 줄 지침들!', '46', '경제', 100, 150);
insert into pr3book values('9791158741600', '미래의 부를 위한 투자 공부', '신진상', 16020, '미디어숲', 'NFT, 메타버스, 블록체인이 바꾸는 돈의 미래에서 기회를 잡아라', '47', '경제', 100, 160);
insert into pr3book values('9791189327156', '물고기는 존재하지 않는다', '룰루 밀러', 15300, '곰출판', '상실, 사랑 그리고 숨어 있는 삶의 질서에 관한 이야기', '48', '과학', 100, 150);
insert into pr3book values('9788983711892', '코스모스', '칼 세이건', 17910, '사이언스북스 ', '이 책에서 저자는 우주의 탄생과 은하계의 진화, 태양의 삶과 죽음, 우주를 떠돌던 먼지가 의식 있는 생명이 되는 과정, 외계 생명의 존재 문제 등에 관한 내용을 수 백장의 사진과 일러스트를 곁들여 흥미롭게 설명한다', '49', '과학', 100, 180);
insert into pr3book values('9791158682446', '읽으면서 바로 써먹는 어린이 수수께끼: 공포 특급', '한날', 11700, '파란정원', '어린이를 위한 수수께끼 책', '50', '아동', 100, 120);
insert into pr3book values('9791133463817', '포켓몬스터 썬문 포켓몬 전국대도감', '대원키즈편집부', 8550, '대원키즈', '포켓몬도감!', '51', '아동', 100, 90);
insert into pr3book values('9791170400608', '너무 잘하려고 애쓰지 마라', '나태주', 12600, '열림원', '나태주 시인의 아름다운 시집', '52', '문학', 100, 130);
insert into pr3book values('9791157280292', '꽃을 보듯 너를 본다', '나태주', 9900, '지혜', '나태주 시인의 아름다운 시집2', '53', '문학', 100, 100);
insert into pr3book values('9791159098161', '벌거벗은 세계사: 전쟁편', 'tvn<벌거벗은세계사>제작팀', 20700, '교보문고', '벌거벗은 세계사tvn 팀의 전쟁을 통한 역사탐험', '54', '역사', 100, 210);
insert into pr3book values('9791191825404', '세상에서 가장 짧은 한국사', '김재원', 16020, '빅피시', '김재원 저자를 통한 한국사를 짧게 알기 쉽게 이해하기', '55', '역사', 100, 160);
insert into pr3book values('9791197693007', '이순신의 바다', '황현필', 19800, '역바연', '황현필 역사강사를 통한 이순신의 바다 이해하기', '56', '역사', 100, 200);
insert into pr3book values('9791168340510', '파친코1', '이민진', 14220, '인플루엔셜', '역사에 외면당한 재일조선인 가족의 대서사극 전 세계를 감동시킨 이민진 작가 화제작 《파친코》 새롭게 출간!', '57', '문학', 100, 140);
insert into pr3book values('9791191043754', '세상의 마지막 기차역', '무라세 다케시', 12600, '모모', '2022년 전 서점 종합 베스트셀러 / 외국 소설 분야 1위! 우리를 뜨겁게 울린 화제의 소설 ‘세상의 마지막 기차역’', '58', '문학', 100, 120);
insert into pr3book values('9791191043976', '오늘 밤, 세계에서 이 눈물이 사라진다 해도', '이치조 미사키', 12600, '모모', '30만 부 돌파 베스트셀러, 일본 영화 개봉·한국 영상화 확정《오늘 밤, 세계에서 이 사랑이 사라진다 해도》 스핀오프 전격 출간!', '59', '문학', 100, 120);
insert into pr3book values('9791197437311', '백년허리 2: 치료편', '정선근', 16650, '언탱글링', '척추위생 - 찢어진 디스크를 아물게 하는 유일한 방법!', '60', '생활', 100, 160);

commit;

INSERT INTO pr3book VALUES ('9791198243430','최소한의 한국사','최태성',16200,'프런트페이지','5천 년 역사가 단숨에 이해되는','61','역사',100,160);
INSERT INTO pr3book VALUES ('9788960908147','인생의 열 가지 생각','이해인',14400,'마음산책','모두 웃고 있을 때 우는 사람을 바라봅시다','62','에세이',100,140);
INSERT INTO pr3book VALUES ('9788936479251','여행의 시간','김진애',16200,'창비','도시 건축가 김진애의 인생 여행법','63','생활',100,160);
INSERT INTO pr3book VALUES ('9788966263998','내 코드가 그렇게 이상한가요?','센바 다이야',23400,'인사이트','좋은 코드/나쁜 코드로 배우는 설계 입문','64','IT',100,230);
INSERT INTO pr3book VALUES ('9791192476209','보리도등론난처석','아띠쌰',36000,'불광출판사','티베트어 원전 완역','65','인문',100,360);
INSERT INTO pr3book VALUES ('9788901273167','누구도 나를 파괴할 수 없다','데이비드 고긴스',17100,'웅진지식하우스','인생이라는 극한의 전쟁에서 끝내 승리하는 법','66','자기계발',100,170);
INSERT INTO pr3book VALUES ('9791191455366','내 디자인, 뭐가 잘못됐나요?','석중휘',19800,'도도','디자인을 잘하고 싶은 사람이 꼭 읽어야 할','67','인문',100,190);
INSERT INTO pr3book VALUES ('9788901273587','공부하고 있다는 착각','대니얼 T. 윌링햄',17820,'웅진지식하우스','성적의 판도를 가르는 뇌 최적화의 기술','68','인문',100,170);
INSERT INTO pr3book VALUES ('9791169850209','이미 시작된 전쟁','이철',18000,'페이지2','북한은 왜 전쟁을 일으킬 수밖에 없는가','69','정치',100,180);
INSERT INTO pr3book VALUES ('9788950985158','거장의 경매 수첩','심완보',19800,'태양바람','37년 투자의 대가가 공개하는 금맥을 거머쥐는 부동산 경매 비기','70','경제',100,190);
INSERT INTO pr3book VALUES ('9788960171930','6시간 후 너는 죽는다','다카노 가즈아키',13500,'황금가지','초능력을 소재로 정교한 미스터리를 결합한 신감각 추리 단편집','71','문학',100,130);
INSERT INTO pr3book VALUES ('9791191505313','무례한 사람을 다루는 법','이헌주',16200,'허들링북스','유연하게 대처하고 단호하게 거절하는 소통 심리학','72','자기계발',100,160);
INSERT INTO pr3book VALUES ('9791168100985','나의 사주명리','현묘',16200,'날','한번쯤은 자신과 자신의 인생이 왜 이런지 사주명리가 궁금해진다.','73','인문',100,160);
INSERT INTO pr3book VALUES ('9791168101999','나의 사주명리 : 심화 편','현묘',15400,'날','십신의 활용부터 용신, 운의 적용까지','74','인문',100,150);
INSERT INTO pr3book VALUES ('9788956252292','광고천재 이제석','이제석',13950,' 학고재','한국이 버린 광고천재, 슈퍼 을이 되어 돌아오다!','75','에세이',100,140);
INSERT INTO pr3book VALUES ('9788950960667','살 때, 팔 때, 벌 때','강영현',19800,' 학고재','여의도 닥터둠 강영현이 공개하는 진격의 주식 투자 타이밍','76','경제',100,200);
INSERT INTO pr3book VALUES ('9791160946673','이파라파냐무냐무','이지은',13500,' 사계절','마시멜로가 사는 평화로운 마을. 마을의 동산 너머로 어느 날 천둥 같은 소리가 들려온다.','77','아동',100,130);
INSERT INTO pr3book VALUES ('9791140704668','1분 요리 뚝딱이형','뚝딱이형',18300,' 길벗','233만 구독자가 선택한 맛보장 레시피 베스트 100','78','생활',100,180);
INSERT INTO pr3book VALUES ('9788931459944','마인크래프트 초보자 가이드','Mojang Studio',10800,'영진닷컴','마인크래프트로 신나는 모험을 떠나는 초보자들을 위한 가이드.','79','게임',100,100);
INSERT INTO pr3book VALUES ('9791189327019','오해의 동물원','루시 쿡',17500,'곰출판','인간의 실수와 오해가 빚어낸 동물학의 역사','80','과학',100,170);
commit;



------------------------------------------회원테이블 생성----------------------

CREATE TABLE pr3member (
    member_num number(20) constraint pr3member_member_num_pk primary key,
    member_id varchar2(30),
    member_pw varchar2(50),
    member_name varchar2(20),
    member_email varchar2(50),
    member_tel varchar2(20),
    member_address varchar2(100),
    member_point number(10)
);


CREATE SEQUENCE member_num
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 10000
    MINVALUE 1
    NOCYCLE;


--회원 테이블 임시값
INSERT INTO pr3member
VALUES(member_num.NEXTVAL, 'imsi', 'imsi', 'imsi', 'imsi@naver.com', '010-1234-5678','서울시 종로구', 0);
INSERT INTO pr3member
VALUES(member_num.NEXTVAL, 'imsi2', 'ims2', 'imsi2', 'imsi2@naver.com', '010-1234-5578','서울시 종로구', 0);
commit;


------------------------장바구니테이블 생성------------------------------------

CREATE TABLE pr3basket(
    member_num number(20) constraint pr3basket_member_num_fk references pr3member(member_num),
    book_isbn varchar2(200) constraint pr3basket_book_isbn_fk references pr3book(book_isbn),
    basket_qry number(10)
);

-----------------주문내역 테이블 생성----------------------------
CREATE SEQUENCE order_number
START WITH 1
    INCREMENT BY 1
    MAXVALUE 10000
    MINVALUE 1
    CYCLE;

CREATE TABLE pr3order(
    order_number number(20) constraint pr3order_order_number_pk primary key,
    member_num number(20) constraint pr3order_member_num_fk references pr3member(member_num),
    order_info varchar2(300),
    order_price varchar2(100),
    order_type varchar2(100),
    order_point varchar2(100)
);

------------------------게시판 테이블 작성--------------------------
create table pr3board(
board_number number(10)constraint pr3board_board_num_pk primary key,
board_writer varchar2(100) ,
board_subject varchar2(100),
board_content varchar2(1000),
board_date varchar2(50),
board_count varchar2(50),
board_step number(10),
board_level number(10)
);

--게시판번호 생성
create sequence pr3board_board_num
START WITH 1
    INCREMENT BY 1
    MAXVALUE 10000
    MINVALUE 1
    CYCLE;







--  query

--검색어 검색했을때 출력
select * from pr3book where book_name like '%수첩%';

--출력된 페이지에서 도서클릭했을때 해당 도서로 이동
select * from pr3book where book_isbn = '9788994492032';

--카테고리 눌렀을때 출력
select * from pr3book where book_category = 'IT';

--장바구니에 상품추가
insert into pr3basket
values(21, '9788994492032' ,  3);

insert into pr3basket
values(21, '9788983711892' , 2);


--장바구니/결제확인페이지 상품출력
select b.book_name, b2.basket_qry, b.book_price, (b.book_price)*(b2.basket_qry)
from pr3book b, pr3basket b2
where b2.book_isbn = b.book_isbn 
and b2.member_num = 21;

--결제했을때 재고차감
update pr3book
set book_qry = book_qry -3
where book_isbn = '9788994492032';
commit;
update pr3book
set book_qry = book_qry -2
where book_isbn ='9788983711892';
commit;


--결제했을때 로그인한회원 포인트추가
update pr3member
set member_point = member_point + '"포인트값"'
where member_num = 21;

--결제했을때 로그인한회원 장바구니 초기화
delete from pr3basket
where member_num=21;





--test
INSERT INTO pr3order
VALUES(order_number.NEXTVAL, 21, '주문상세내역', '19800');

commit;

drop table pr3basket;
drop table pr3category;
















select * from pr3book where book_name like '%' ||  'Java' || '%';










insert into pr3book
values('9780008435769','The Maid','Nita Prose',18870,'HarperCollins Publishers',
'당신은 그녀를 볼 수 없지만, 그녀는 당신을 봅니다.당신의 비밀, 더러운 치부까지도… 그녀는 호텔 메이드입니다.',
'81.jpg','미스테리/호러/스릴러',100,187);
insert into pr3book
values
('9781797218519','Lockwood&co','Jonathan Stroud',18000,
'Penguin Books','An electrifying, witty and brilliantly spooky thriller from a master storyteller, soon to be a major Netflix series',
'82.jpg','청소년소설/미스테리/호러/스릴러',100,180 );
insert into pr3book
values
('9781668010815','A Man Called Ove','Fredrik backman',28780,'Washington Square Press',
'Now a major motion picture A Man Called Otto starring Tom Hanks!','83.jpg','현대소설',100,290 );
insert into pr3book
values
('9780008521356','Why Didn''t They Ask Evans?','Agatha christie',18000,'HarperCollins Publishers',
'While playing an erratic round of golf, Bobby Jones slices his ball over the edge of a cliff. His ball is lost, but on the rocks below he finds the crumpled body of a dying man. The man opens his eyes and, with his last breath, says, ''Why didn''t they ask Evans?''',
'84.jpg','미스테리/호러/스릴러',100,180);

insert into pr3book
values
('9780743477543','A Midsummer Night''s Dream','William Shakespeare',10500,'Washington Square Press',
'This edition of one of Shakespeare s most beloved comedies features a freshly edited text of the play, scene-by-scene explanatory notes, a key to famous lines and phrases, and much more. Reissue.','85.jpg','희곡',100,110);
insert into pr3book
values
('9781476733043','The Good Earth','pearl.s.buck',11600,'Washington Square Press','This moving, classic story of the honest farmer Wang Lung and his selfless wife O-lan is must reading for those who would fully appreciate the sweeping changes that have occurred in the lives of the Chinese people during this century.',
'86.jpg','고전소설',100,120);
insert into pr3book
values
('9781401308773','Dead Poet''s Society','N. H. Kleinbaum, Tom Schulman',9500,'Hyperion Records','Todd Anderson and his friends at Welton Academy can hardly believe how their lives have changed since their new English professor, the flamboyant John Keating, has challenged them: "Make your lives extraordinary!" Inspired by Keating, the boys resurrect the Dead Poets Society - a secret club where, free from the constraints and expectations of school, parents and the world, they let their passions run wild.','87.jpg','현대소설',100,100);
insert into pr3book
values
('9780399533372','Lord of the Flies','William golding',12900,'Penguin Books','Lord of the Flies is a 1954 novel by the Nobel Prize-winning British author William Golding. The plot concerns a group of British boys who are stranded on an uninhabited island and their disastrous attempts to govern themselves.','88.jpg','영미고전소설/문학선',100,130);
insert into pr3book
values
('9780142410370','Matilda','Roald dahl', 10800,'Puffin Books','책 읽기를 좋아하며 14 곱하기 19를 단 1초에 계산하는 천재 마틸다. 마틸다는 아빠의 구박에 못 이겨 아빠를 골탕먹이기 위해 초강력 접착제 소동을 벌이고, 유령 소동, 머리 염색 소동 등을 벌인다. 하지만 이건 아주 작은 것에 불과한데, 진짜 소동은 마틸다가 학교에 들어가면서 시작된다. 통통 튀는 마틸다의 기발하고 신나는 소동 이야기.','89.jpg','청소년소설',100,110);
insert into pr3book
values
('9780156035880','Life of Pi','Yann martel',12900,'Harcourt','The protagonist is Piscine Molitor "Pi" Patel, an Indian boy from Pondicherry, India, who explores issues of spirituality and metaphysics from an early age. He survives 227 days after a shipwreck while stranded on a lifeboat in the Pacific Ocean with a Bengal tiger which raises questions about the nature of reality and how it is perceived and told.','90.jpg','현대소설/유머/기타',100,130);
insert into pr3book
values
('9780451524935','1984','George orwell',12900,'Signet Classics','『동물농장』의 저자 조지 오웰이 가공의 초대국에서 자행되는 전체주의적 지배의 양상을 묘사한 작품. 전쟁으로 인한 전인류의 비인간화 고문과 세뇌로 인한 기계적 인간화를 그림으로써 완벽한 전체주의를 묘사한 미래 소설이자 정치 풍자 소설이기도 하다.',
'91.jpg','고전소설/현대소설',100,130);
insert into pr3book
values
('9780142410318','Charlie and the Chocolate Factory','Roald dahl',10800 ,'Viking Books for Young Readers','윌리 웡카의 초콜릿 포장지 속에 들어 있는 황금빛 초대장을 찾은 어린이는 아무도 들어가 본 적이 없는, 비밀에 싸인, 전설적인 윌리 웡카의 초콜릿 공장을 견학하고 평생 먹을 수 있는 초콜릿과 사탕을 선물로 받는다. ','92.jpg','창작동화/청소년소설/어린이',100 ,110 );
insert into pr3book
values
('9781408855652','Harry Potter and the Philosopher''s Stone','j.k.rowling',11900 ,'Bloomsbury','"떨리는 손으로 봉투를 뒤집은 해리는 거대한 문자 H가 사자와 독수리와 오소리와 뱀에 둘러싸여 있는 모양의 보랏빛 밀랍 봉인을 보았다."',
'93.jpg','판타지/어린이/청소년소설', 100,120 );
insert into pr3book
values
('9781408845660','Harry Potter and the Prisoner of Azkaban','j.k.rowling',11900,'Bloomsbury','During his third year at Hogwarts School for Witchcraft and Wizardry, Harry Potter must confront the devious and dangerous wizard responsible for his parents'' deaths.','94.jpg','판타지/어린이/청소년소설',100 ,120 );
insert into pr3book
values
('9780439139601','Harry Potter and the Goblet of Fire','j.k.rowling',15500 ,'Scholastic Paperbacks','A teenager pitching headfirst into the world of near adulthood, Harry returnsto Hogwarts for his fourth year.',
'95.jpg','판타지/어린이/청소년소설',100,160);
insert into pr3book
values
('9780008319748','Bird Box','Josh malerman', 15300,'HarperCollins Publishers','IF YOU’VE SEEN WHAT’S OUT THERE…IT’S ALREADY TOO LATE','96.jpg','미스테리/호러/스릴러',100 ,150 );
insert into pr3book
values
('9781473223677','Altered Carbon','Richard Morgan',18870,'Gollancz ','400년 후의 미래 인류는 화성에서 발견된 고대문명으로부터 전해져 내려온 항성의 공간 지역에서 생명을 이어가고 있다. 식민지를 오고 가는 우주선과 4차원의 데이터 스트림을 통해 각 식민지들은 서로 연결되어 있다. 인간의 의식은 디지털화 되어서 항성 사이를 이동하고, 또한 다른 신체에 다운로드 되기도 한다.',
'97.jpg','소설/SF', 100, 190);
insert into pr3book
values
('9781524796976','Blade Runner','Philip.k.dick', 15000,'Del Rey Books','Here is the classic sci-fi novel Do Androids Dream of Electric Sheep?, set nearly thirty years before the events of the new Warner Bros. film Blade Runner 2049, starring Harrison Ford, Ryan Gosling, and Robin Wright.','98.jpg','SF/판타지/현대소설',100 , 150);
insert into pr3book
values
('9781473666931','It','Stephen king',17100 ,'Hodder, Stoughton','"스티븐 킹을 대표하는 최고의 소설, 『그것』“공포 문학의 대가가 낳은 가장 뛰어난 작품” ― [피플]"',
'99.jpg','미스테리/호러/스릴러', 100,171 );
insert into pr3book
values
('9781785031137','The Martian','Andy weir',20970 ,'Ebury Press','"아무래도 좆됐다. 그것이 내가 심사숙고 끝에 내린 결론이다. 나는 좆됐다."','100.jpg','소설/SF/판타지',100 , 210);


select * from pr3book order by book_qry;
--uPDATE [테이블] SET [열] = '변경할값' WHERE [조건]

update pr3book set book_qry=101 where book_img=21;
commit;
 
 select * from pr3book
 where (book_price <15000 and book_price>8000) or (book_price >15000 and book_price<8000);
 
 select * from pr3book
 where book_name like '%나미야%';