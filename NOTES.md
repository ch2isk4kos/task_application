#Play-by-Play

1. $ rails new task

2. $ rails generate model Ad title:string description:string company:string url:string

3. $ rails db:migrate

4. $ rails generate controller Ads

5. add simple_form, haml && bootstrap-sass to Gemfile

6. configure simple_form

7. configure bootstrap-sass

8. add a form to ads/_form.html.haml __ partial

9. create ad view files

10. add #edit && #destroy actions in ads_controller.rb

11. $ rails generate model Category name:string

12. $ rake db:migrate

13. $ rails generate migration add_category_id_to_ads category:integer

14. $ rake db:migrate

15. create Associations between Category --< Ad
