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

# 유저(일반, 단체 관리자, 사이트 관리자)
User.create(email: 'admin', password: '123456',
            department_id: 1, name: '사이트 관리자', phone_number: '000-0000-0000',
            mail: 'admin@admin', grade: '0', authorization: 0)