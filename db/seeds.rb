# rake db:drop
# rake db:migrate
# rake db:seed

## 학부, 학과
Department.create(department_name: 'IT융합 자율학부')
Department.create(department_name: '컴퓨터공학')
Department.create(department_name: '소프트웨어공학')
Department.create(department_name: '정보통신공학')
Department.create(department_name: '글로컬IT')
Department.create(department_name: '미디어컨텐츠융합 자율학부')
Department.create(department_name: '신문방송학')
Department.create(department_name: '디지털컨텐츠')
Department.create(department_name: '사회융합 자율학부')
Department.create(department_name: '사회과학')
Department.create(department_name: '사회복지학')
Department.create(department_name: '경영학')
Department.create(department_name: '인문융합 자율학부')
Department.create(department_name: '일어일본학')
Department.create(department_name: '중어중국학')
Department.create(department_name: '기독교문화')

## 학년
Grade.create(grade_name: '1학년')
Grade.create(grade_name: '2학년')
Grade.create(grade_name: '3학년')
Grade.create(grade_name: '4학년')

## 단체 (동아리, 소모임)
Club.create(club_name: '멋쟁이사자처럼', introduce: 'Hack Your Life! 나만의 서비스를 내손으로')
Club.create(club_name: '개발자들', introduce: '성공회대 정통 개발 동아리 개발자들')
Club.create(club_name: 'Puzzle', introduce: '성공회대 공연기획 동아리!')
Club.create(club_name: 'BIS', introduce: '성공회대 밴드 동아리')
Club.create(club_name: '극연꾼', introduce: '성공회대 연극 동아리')
Club.create(club_name: 'M.R.Crew', introduce: '성공회대 힙합&알앤비 동아리')
Club.create(club_name: 'ELPIS', introduce: '성공회대 밴드 동아리')
Club.create(club_name: 'C.O.L', introduce: '성공회대 락밴드 동아리')
Club.create(club_name: 'NUTEE - 누티', introduce: '성공회대학교 커뮤니티')
Club.create(club_name: '아침햇살', introduce: '성공회대 동아리 아침햇살')
Club.create(club_name: 'S.owl', introduce: '성공회대 개발 동아리 소울')
Club.create(club_name: 'SKHU''S', introduce: '성공회대 보안 동아리')



# 단체 옵션
Option.create(club_id: 1, apply_active: 1) # 멋쟁이 사자처럼 옵션
Option.create(club_id: 2, apply_active: 0) # 개발자들 옵션
Option.create(club_id: 3, apply_active: 0)
Option.create(club_id: 4, apply_active: 1)
Option.create(club_id: 5, apply_active: 0)
Option.create(club_id: 6, apply_active: 0)
Option.create(club_id: 7, apply_active: 1)
Option.create(club_id: 8, apply_active: 0)
Option.create(club_id: 9, apply_active: 0)
Option.create(club_id: 10, apply_active: 1)
Option.create(club_id: 11, apply_active: 0)
Option.create(club_id: 12, apply_active: 0)



# 사이트 관리자
User.create(email: 'admin', password: '123456',
            department_id: 1, name: '사이트 관리자', phone_number: '000-0000-0000',
            mail: 'admin@admin', grade_id: '0', authorization: 0)
            
# 단체 관리자
User.create(email: 'likelion_admin', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 관리자', phone_number: '000-0000-0000',
            mail: 'likelion@admin', grade_id: '0', authorization: 1)
            
User.create(email: 'devdogs_admin', password: '123456',
            department_id: 3, name: '개발자들 관리자', phone_number: '000-0000-0000',
            mail: 'devdogs@admin', grade_id: '0', authorization: 1)
            
# 일반 유저
User.create(email: 'likelion_user1', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원1', phone_number: '000-0000-0000',
            mail: 'likelion@user1', grade_id: '1', authorization: 2)
            
User.create(email: 'likelion_user2', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원2', phone_number: '000-0000-0000',
            mail: 'likelion@user2', grade_id: '2', authorization: 2)
            
User.create(email: 'devdogs_user1', password: '123456',
            department_id: 3, name: '개발자들 회원1', phone_number: '000-0000-0000',
            mail: 'devdogs@user1', grade_id: '1', authorization: 2)
            
User.create(email: 'devdogs_user2', password: '123456',
            department_id: 3, name: '개발자들 회원2', phone_number: '000-0000-0000',
            mail: 'devdogs@user2', grade_id: '2', authorization: 2)

# 어떤 단체에도 소속되어있지 않은 회원
User.create(email: '201635034', password: '123456',
            department_id: 2, name: '함진경', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
            
User.create(email: '201814102', password: '123456',
            department_id: 1, name: '박 결', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 2)            

# 멋쟁이 사자처럼 단체 소속
ClubMember.create(club_id: 1, user_id: 2)
ClubMember.create(club_id: 1, user_id: 4)
ClubMember.create(club_id: 1, user_id: 5)

# 개발자들 단체 소속
ClubMember.create(club_id: 2, user_id: 3)
ClubMember.create(club_id: 2, user_id: 6)
ClubMember.create(club_id: 2, user_id: 7)
ClubMember.create(club_id: 2, user_id: 4) 

# Puzzle 단체 소속

#지원 양식
ApplyForm.create(club_id: 1, title1: '당신이 만들고 싶은 서비스는 무엇인가요?', title2: '가장 기억에 남는 웹서비스가 있다면 무엇인가요?' , title3: '멋쟁이 사자처럼에 대해서 아는 것을 말씀해주세요.', title4: '멋쟁이 사자처럼은 우수한 동아리이지만, 그만큼 엄격한 규칙을 가지고 있습니다. 이를 지키실 수 있나요?', title5: '마지막으로 하고 싶은 말을 적어주세요')
ApplyForm.create(club_id: 2, title1: '개발자들 질문1', title2: '개발자들 질문2', title3: '개발자들 질문3')

#지원 내용
ApplyContent.create(apply_form_id: 1, user_id: 8, content1: "안녕하세요!", content2: "멋쟁이", content3: "사자가", content4: "되고", content5: "싶습니다.")
