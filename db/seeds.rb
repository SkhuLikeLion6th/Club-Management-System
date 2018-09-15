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
Club.create(club_name: '멋쟁이사자처럼')
Club.create(club_name: '개발자들')

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
            mail: 'likelion@user1', grade_id: '0', authorization: 2)
            
User.create(email: 'likelion_user2', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원2', phone_number: '000-0000-0000',
            mail: 'likelion@user2', grade_id: '0', authorization: 2)
            
User.create(email: 'devdogs_user1', password: '123456',
            department_id: 3, name: '개발자들 회원1', phone_number: '000-0000-0000',
            mail: 'devdogs@user1', grade_id: '0', authorization: 2)
            
User.create(email: 'devdogs_user2', password: '123456',
            department_id: 3, name: '개발자들 회원2', phone_number: '000-0000-0000',
            mail: 'devdogs@user2', grade_id: '0', authorization: 2)

# 어떤 단체에도 소속되어있지 않은 회원            
User.create(email: '201635034', password: '123456',
            department_id: 3, name: '일반인', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '0', authorization: 2)

# 멋쟁이 사자처럼 단체 소속
ClubMember.create(club_id: 1, user_id: 2)
ClubMember.create(club_id: 1, user_id: 4)
ClubMember.create(club_id: 1, user_id: 5)

# 개발자들 단체 소속
ClubMember.create(club_id: 2, user_id: 3)
ClubMember.create(club_id: 2, user_id: 6)
ClubMember.create(club_id: 2, user_id: 7)

#지원 양식
ApplyForm.create(club_id: 1, title1: '멋사 질문1', title2: '멋사 질문2', title3: '멋사 질문3', title4: '멋사 질문4', title5: '멋사 질문5')
ApplyForm.create(club_id: 2, title1: '개발자들 질문1', title2: '개발자들 질문2', title3: '개발자들 질문3', title4: '개발자들 질문4', title5: '개발자들 질문5')