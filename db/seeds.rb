Brand.destroy_all
Student.destroy_all
Assignment.destroy_all

Student.create(first_name: 'Adrian', last_name: 'Wyatt',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Andrew', last_name: 'Smith',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Alexa', last_name: 'Klien',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Anissa', last_name: 'Jones',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Bipin', last_name: 'Neupane',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Brendan', last_name: 'Magee',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Caitlin', last_name: 'Daitch',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Cam', last_name: 'Latimer',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Charles', last_name: 'Hwang',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Christine', last_name: 'Movius',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Clarissa', last_name: 'Stark',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Craig', last_name: 'Eisen',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Farishta', last_name: 'Haider',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Isaac', last_name: 'Hayes',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Jeffery', last_name: 'Eaton',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'John', last_name: 'Blakeman',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Keith', last_name: 'Prifte',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Lyndsey', last_name: 'Newsome',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Melissa', last_name: 'Miller',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Mohamed', last_name: 'Chalal',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Robel', last_name: 'Tekeste',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Sanjaya', last_name: 'Satyal',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Sarah', last_name: 'Brooks',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Patrick', last_name: 'Moran',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Toni', last_name: 'Langley',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Vijay', last_name: 'Bajwa',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Winisha', last_name: 'Smith',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Woo', last_name: 'Yun',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Brittany', last_name: 'Branson',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Casey', last_name: 'Gill',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Fatai', last_name: 'Agiri',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Hilary', last_name: 'Masland',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Kaira', last_name: 'Johnson',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Kimberley', last_name: 'Cabbagestalk-Creer',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Matt', last_name: 'Stevens',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Matt', last_name: 'Kerns',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Max', last_name: 'Milliank',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Nyron', last_name: 'Waite',ga_focus:'WDI', cohort_number:'8')
Student.create(first_name: 'Ryan', last_name: 'Krolick',ga_focus:'WDI', cohort_number:'8')

#  :week number :intro, :speakers, :goal, :themes, :materials, :assignments, :resources
Week.create(week_number: '1', title: 'Week 1: Introduction to Outcomes & the DC Tech Community', intro: 'Who is the Outcomes Team and this community of DC techies? How are you going to land a job in a competitive market utilizing the talents you are about to embark on? What types of jobs exist that could be your next professional chapter? How can you best get involved in the most sought after community in DC? Join us as we introduce the DC Outcomes Team and how we are going to help you navigate the job search starting week 1! You will also meet some of the leading experts in the DC Tech Community who will share their Tips and Tricks! Come prepared with 3 burning questions you would love to know!', speakers: 'names', goal: 'Setting clear expectations around Outcomes, it’s mission, vision, and goals. You will understand how to qualify for Outcomes support, the 5 themes associated with success, and what is required to be a job seeker. Meet leading experts and learn how to acclimate to the DC tech community and get involved to best set your job search up for success! ', themes: 'Participating in the Community; Becoming a Thought Leader; Understanding the Landscape', notes: ' ')

Assignment.create(title: 'Outcomes Prework', instructions: 'Complete the questionaire', due_date:(20161122), ga_focus: 'all')
Assignment.create(title: 'WDI Assignment Example', instructions: 'Do this and this', due_date:(20171017), ga_focus:'WDI')
Assignment.create(title: 'UX Assignment Example', instructions: 'Do this and that and this', due_date:(20171003), ga_focus: 'UXDI')
