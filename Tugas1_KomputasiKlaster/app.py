from flask.app import Flask
from flask.templating import render_template
from flask import request
from sql_helper import detail_siswa
import time
app = Flask(__name__)

start = time.perf_counter()
detail = detail_siswa()
end = time.perf_counter()
print(f"Fetching students data in {end-start}s")
# print(detail)

start = time.perf_counter()
end = time.perf_counter()   
print(f"Combining all data in {end-start}s")

ms = {
    'matematika': 3,
    'fisika': 4,
    'biologi': 5,
    'bahasa indonesia': 6,
    'bahasa inggris': 7,
    'sejarah': 8,
    'kimia': 9
}


@app.route("/")
def index():
    page = request.args.get('page', 0, type=int)
    return render_template('index.html', res=detail, enumerate=enumerate, page=page)

# @app.route("/filter")
# def filter_page():
#     mapel = request.args.get('mapel', 'matematika', type=str).strip().lower()
#     symbol = request.args.get('symbol', '>', type=str).strip().lower()
#     nilai = request.args.get('nilai', 0, type=int)
#     page = request.args.get('page', 0, type=int)

#     if mapel not in ms.keys():
#         return 'error mapel'

#     if symbol not in qs.keys():
#         return 'error symbol'

#     return render_template('index.html', res=qs[symbol](mapel, nilai), page=page, enumerate=enumerate)