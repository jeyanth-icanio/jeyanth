from flask import Flask, jsonify, request

app = Flask(__name__)

# Dummy data - books
books = [
    {"id": 1, "title  icanio": "Book 1", "author": "Author 1"},
    {"id": 2, "title icanioooo": "Book 2", "author": "Author 2"},
]

# GET - Retrieve all books
@app.route('/books', methods=['GET'])
def get_books():
    return jsonify(books)

# GET - Retrieve a single book by ID
@app.route('/books/<int:book_id>', methods=['GET'])
def get_book(book_id):
    for book in books:
        if book['id'] == book_id:
            return jsonify(book)
    return jsonify({'message': 'Book not found'}), 404

# POST - Add a new book
@app.route('/books', methods=['POST'])
def add_book():
    new_book = {
        'id': len(books) + 1,
        'title': request.json['title'],
        'author': request.json['author']
    }
    books.append(new_book)
    return jsonify(new_book), 201

# PUT - Update a book by ID
@app.route('/books/<int:book_id>', methods=['PUT'])
def update_book(book_id):
    for book in books:
        if book['id'] == book_id:
            book['title'] = request.json['title']
            book['author'] = request.json['author']
            return jsonify(book)
    return jsonify({'message': 'Book not found'}), 404

# DELETE - Delete a book by ID
@app.route('/books/<int:book_id>', methods=['DELETE'])
def delete_book(book_id):
    for book in books:
        if book['id'] == book_id:
            books.remove(book)
            return jsonify({'message': 'Book deleted'})
    return jsonify({'message': 'Book not found'}), 404

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=1234)

