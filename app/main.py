from fastapi import FastAPI
from mangum import Mangum

app = FastAPI()

@app.get("/")
def root():
    return {"message": "FastAPI running on AWS Lambda 🚀"}

@app.get("/health")
def health():
    return {"status": "healthy"}

# Important: Lambda entry point
handler = Mangum(app, lifespan="off")