Brand.destroy_all
Student.destroy_all

Student.create(first_name: 'Adrian', last_name: 'Wyatt',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Andrew', last_name: 'Smith',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Alexa', last_name: 'Klien',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Anissa', last_name: 'Jones',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Bipin', last_name: 'Neupane',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Brendan', last_name: 'Magee',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Caitlin', last_name: 'Daitch',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Cam', last_name: 'Latimer',ga_focus:'WDI', cohort_number:'8')


Brand.create(body:"I am a creative and energetic web developer with a knack for inspiring enthusiasm in my teammates. An adaptable and natural leader, I am not afraid to bring unconventional methods to the table in order to solve a problem and all the while,  I'll make sure everyone shares in the fun.", student_id:1)
