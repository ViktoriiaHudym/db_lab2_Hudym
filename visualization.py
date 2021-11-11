import psycopg2
import matplotlib.pyplot as plt
import numpy as np


username = 'student01'
password = '1111'
database = 'Lab2_CourseraCourses'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT course_title, students_enrolled FROM Students 
JOIN Courses_Organizations USING(course_number)
JOIN Course USING(course_id);
'''

query_2 = '''
SELECT type_name, COUNT(*) FROM DifficultyType 
JOIN Courses_Organizations
ON DifficultyType.type_id = Courses_Organizations.course_difficulty
GROUP BY type_name;
'''

query_3 = '''
SELECT rating_value, students_enrolled FROM Courses_Organizations 
JOIN Ratings USING(course_number)
JOIN Students USING(course_number)
ORDER BY rating_value ASC;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur = conn.cursor()

    cur.execute(query_1)
    courses = []
    students = []

    for row in cur:
        courses.append(row[0])
        students.append(row[1])

    y_pos = np.arange(len(courses))

    figure, ((bar_ax, pie_ax), (graph_ax, empty)) = plt.subplots(nrows=2, ncols=2, figsize=(11, 8))

    # Bar
    hbars = bar_ax.barh(y_pos, students, align='center', color='#8c66ff')
    bar_ax.set_yticks(y_pos)
    bar_ax.set_yticklabels(courses, fontweight='bold')
    bar_ax.xaxis.set_visible(False)
    for s in ['top', 'bottom', 'left', 'right']:
        bar_ax.spines[s].set_visible(False)
    bar_ax.set_title('Кількість студентів,\nщо залучені до курсу', fontweight='bold', fontsize=14)
    bar_ax.bar_label(hbars, padding=4, labels=students, fontsize=8)

    cur.execute(query_2)
    difficulties = []
    difficulties_amount = []

    for row in cur:
        difficulties.append(row[0])
        difficulties_amount.append(row[1])

    # Pie
    colors = ['#8c66ff', '#ff66ff', '#66b3ff']
    pie_ax.pie(difficulties_amount, labels=difficulties, autopct='%.1f%%', colors=colors)
    pie_ax.set_title('Розподіл\nскладностей', fontsize=14, fontweight='bold')

    cur.execute(query_3)
    students_enrolled = []
    ratings = []

    for row in cur:
        ratings.append(row[0])
        students_enrolled.append(row[1])

    # Graph
    graph_ax.plot(ratings, students_enrolled, color='black', marker='o')
    graph_ax.set(xlabel='Рейтинг', ylabel='Кількість студентів',
                 title='Залежність кількості студенів\nвід рейтингу курсу')
    for rt, student in zip(ratings, students_enrolled):
        graph_ax.annotate(student, xy=(rt, student), xytext=(7, 2), textcoords='offset points', fontsize=7)

    empty.axis('off')


mng = plt.get_current_fig_manager()
mng.resize(1400, 600)
plt.tight_layout()
plt.show()
