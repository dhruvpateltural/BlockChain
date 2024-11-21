//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;


//Demonstrate Structure
contract DemonstratingStructure{
    struct Book{
        string title;
        string author;
        uint book_id;
    }

    Book b1;

    function setBook() public{
        b1=Book("Harry Potter", "JK Rowling",1);
    }

    function enterBookDetails(string memory tittle, string memory author, uint bookID) public{
        b1 = Book(tittle, author, bookID);
    }

    function getBookDetails() public view returns (string memory,string memory, uint ) {
        return (b1.title,b1.author,b1.book_id);
    }

    
}