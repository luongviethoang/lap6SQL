--lấy ra dữ liệu của bảng contact có contactID>= 100 và ContactID<=200
SELECT
FROM Person.contact
WHERE Contact.ID >= 100 AND ContactID <= 200
--lấy ra dữ liệu của bảng Contact có ContactID trong khoảng [100,200]SELECT * FROM Person.Contact
SELECT * FROM Person.Contact
WHERE Contact.ID BETWEEN 100 AND 200 
--lấy ra những Contact có last Name kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '%e'
--lấy ra những Contact có LastName bắt đầu bởi ký tự R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE'[RA]%e'
--Lấy ra những Contact có LastName có 4 ký tự bắt đầu bởi R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE'[RA]__e'
--sử dụng inner join
SELECT Person.Contact.*
FROM person.contact INNER JOIN HumanResources.Employee ON
	person.contact.contactID=HumanResources.Employee.ContactID
SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
WHERE Title LIKE 'Mr%'
GROUP BY ALL Title
--group by với having: mệnh đề having sẽ lọc kết quả trong lúc được gộp nhóm
SELECT Title, COUNT (*) [Title Number]
FROM Person.Contact 
GROUP BY ALL Title
HAVING Title LIKE 'Mr%'