from flask import Flask, render_template,url_for
from sqlalchemy import create_engine,text
import pandas as pd
from config import db_password
engine=create_engine(f"postgresql://postgres:{db_password}@localhost:5432/Covid_Impact")
conn = engine.connect()
app=Flask(__name__)
@app.route("/")
def index():
    return render_template("test.html")

@app.route("/api/data")
def data ():
    df = pd.read_sql("select * from btu_by_stpop", con=conn)
    return df.to_json(orient="records")
if __name__ =="__main__":
    app.run(debug=True)