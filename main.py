from rag_Process import vector

if __name__ == "__main__":
    print("Starting RAG process...")
    print("Converting text files to vectors and uploading to Qdrant...")
    rag_process = vector.main()
    print("RAG process completed successfully!")