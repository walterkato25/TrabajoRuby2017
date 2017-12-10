# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create([{ email: 'profesorJTP@gmail.com', password:'123456'}])
jtp = User.new
jtp.email = 'proffesorJTP@gmail.com'
jtp.password = '123456'
jtp.save


#titular = User.create([{ email: 'profesorTit@gmail.com', password:'123456'}])
titular = User.new
titular.email = 'proffesorTit@gmail.com'
titular.password = '123456'
titular.save

#curso1 = Course.create([{ year: 2017, description: 'Cursada primer cuatrimestre'}])
curso1 = Course.new
curso1.year = '2017'
curso1.description = 'cursada primer cuatrimestre'
curso1.save

jtp.courses << curso1
titular.courses << curso1
curso1.users << jtp
curso1.users << titular



Student.create([{ legajo: 1111111, dni: 12345, lastname:'Lopez', name:'Julio', email: 'lalo@landa.com', course_id: 1 },
                 { legajo: 1112222, dni: 1234532, lastname:'Lopez', name:'Pedro', email: 'lalolo@landa.com', course_id: 1 }])
Activity.create([{ description: 'Primer parcial', date: '20/09/2017', minimum: 10, course_id: 1},
				{ description: 'Segundo parcial', date: '20/11/2017', minimum: 10, course_id: 1}])
Note.create([{ nota:11, activity_id: 1, student_id: 1},
				{ nota:12, activity_id: 2, student_id: 1},
				{ nota:7, activity_id: 1, student_id: 2},
				{ nota:15, activity_id: 2, student_id: 2}])