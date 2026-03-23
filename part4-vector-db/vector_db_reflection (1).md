## Vector DB Use Case Reflection

A traditional keyword-based database search would not be sufficient for a system where lawyers search large contracts using natural language questions. Keyword search only finds exact words in a document. However, legal documents often use complex language and different wording for the same meaning. For example, a lawyer might ask “What are the termination clauses?” but the contract may describe it as “conditions for ending the agreement.” In such cases, keyword search may fail to find the correct information.

Vector databases solve this problem by using embeddings. Embeddings convert text into numerical vectors that capture the meaning of the text. Instead of matching exact words, the system compares the meaning of the query with the meaning of document sections.

In this system, each section of a large contract can be converted into embeddings and stored in a vector database. When a lawyer asks a question, the query is also converted into an embedding. The vector database then finds the most semantically similar sections using similarity search.

This makes the system faster and more accurate when retrieving relevant clauses from large legal documents.
