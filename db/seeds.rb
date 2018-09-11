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

## 단체 (동아리, 소모임)
Club.create(club_name: '멋쟁이사자처럼')
Club.create(club_name: '개발자들')

# 사이트 관리자
User.create(email: 'admin', password: '123456',
            department_id: 1, name: '사이트 관리자', phone_number: '000-0000-0000',
            mail: 'admin@admin', grade: '0', authorization: 0)
            
# 단체 관리자
User.create(email: 'likelion_admin', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 관리자', phone_number: '000-0000-0000',
            mail: 'likelion@admin', grade: '0', authorization: 1)
            
User.create(email: 'devdogs_admin', password: '123456',
            department_id: 3, name: '개발자들 관리자', phone_number: '000-0000-0000',
            mail: 'devdogs@admin', grade: '0', authorization: 1)
            
# 일반 유저
User.create(email: 'likelion_user1', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원1', phone_number: '000-0000-0000',
            mail: 'likelion@user1', grade: '0', authorization: 2)
            
User.create(email: 'likelion_user2', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원2', phone_number: '000-0000-0000',
            mail: 'likelion@user2', grade: '0', authorization: 2)
            
User.create(email: 'devdogs_user1', password: '123456',
            department_id: 3, name: '개발자들 회원1', phone_number: '000-0000-0000',
            mail: 'devdogs@user1', grade: '0', authorization: 2)
            
User.create(email: 'devdogs_user2', password: '123456',
            department_id: 3, name: '개발자들 회원2', phone_number: '000-0000-0000',
            mail: 'devdogs@user2', grade: '0', authorization: 2)
            
# 멋쟁이 사자처럼 단체 소속
ClubMember.create(club_id: 1, user_id: 2)
ClubMember.create(club_id: 1, user_id: 4)
ClubMember.create(club_id: 1, user_id: 5)

# 개발자들 단체 소속
ClubMember.create(club_id: 2, user_id: 3)
ClubMember.create(club_id: 2, user_id: 6)
ClubMember.create(club_id: 2, user_id: 7)