# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.create(name: 'Luke', birth_date:'2016/01/20', color: 'green', sex: 'M')
Cat.create(name: 'Han', birth_date:'2018/01/20', color: 'blue', sex: 'M')
Cat.create(name: 'Leia', birth_date:'2017/12/25', color: 'red', sex: 'F')
Cat.create(name: 'Chewie', birth_date:'2016/04/20', color: 'brown', sex: 'M')
Cat.create(name: 'R2D2', birth_date:'2017/03/17', color: 'silver', sex: 'F')
