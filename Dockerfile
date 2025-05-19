FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Make sure the rag_Process directory is recognized as a package
RUN touch rag_Process/__init__.py

# Set environment variables for Qdrant
ENV QDRANT_URL=http://your-qdrant-host:6333
ENV QDRANT_API_KEY=your-api-key-if-needed

CMD ["python", "main.py"]