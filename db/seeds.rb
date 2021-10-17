# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email:"ola@mundo", password:"123456")

Teacher.create(name:"Professor 1", email:"prof_1@mail.com", birth:"1999-01-01")
Teacher.last.profile_pic.attach(io: File.open('./public/teacher.png'), filename: 'teacher.png')
Teacher.create(name:"Professor 2", email:"prof_2@mail.com", birth:"1999-01-02")
Teacher.last.profile_pic.attach(io: File.open('./public/teacher.png'), filename: 'teacher.png')

Language.create(name:"ruby", teacher_id: 1)
Language.last.docs.attach(io: File.open('./public/docs.txt'), filename: 'docs.txt')
Language.last.docs.attach(io: File.open('./public/docs2.txt'), filename: 'docs2.txt')
Language.create(name:"c", teacher_id: 2)
Language.last.docs.attach(io: File.open('./public/docs.txt'), filename: 'docs.txt')
Language.last.docs.attach(io: File.open('./public/docs2.txt'), filename: 'docs2.txt')


Student.create(name:"Aluno 1", registration: "100000001" ,email:"aluno_1@mail.com", birth:"2005-01-01", teacher_id: 1)
Student.last.profile_pic.attach(io: File.open('./public/student.png'), filename: 'student.png')
Student.create(name:"Aluno 2", registration: "100000002" ,email:"aluno_2@mail.com", birth:"2005-01-02", teacher_id: 1)
Student.last.profile_pic.attach(io: File.open('./public/student.png'), filename: 'student.png')
Student.create(name:"Aluno 3", registration: "100000003" ,email:"aluno_3@mail.com", birth:"2005-01-03", teacher_id: 1)
Student.last.profile_pic.attach(io: File.open('./public/student.png'), filename: 'student.png')
Student.create(name:"Aluno 4", registration: "100000004" ,email:"aluno_4@mail.com", birth:"2005-01-04", teacher_id: 2)
Student.last.profile_pic.attach(io: File.open('./public/student.png'), filename: 'student.png')
Student.create(name:"Aluno 5", registration: "100000005" ,email:"aluno_5@mail.com", birth:"2005-01-05", teacher_id: 2)
Student.last.profile_pic.attach(io: File.open('./public/student.png'), filename: 'student.png')








