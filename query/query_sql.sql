USE csdl_qlct;
#ex3
#Hiển thị toàn bộ nội dung của bảng Architect
SELECT * FROM architect;
#Hiển thị danh sách gồm họ tên và giới tính của kiến trúc sư
SELECT name,sex FROM architect;
#Hiển thị những năm sinh có thể có của các kiến trúc sư
SELECT birthday
FROM architect
GROUP BY birthday;
#Hiển thị danh sách các kiến trúc sư (họ tên và năm sinh) (giá trị năm sinh tăng dần)
SELECT name,birthday 
FROM architect
ORDER BY birthday ASC;
#Hiển thị danh sách các kiến trúc sư (họ tên và năm sinh) (giá trị năm sinh giảm dần)
SELECT name,birthday 
FROM architect
ORDER BY birthday DESC;
#Hiển thị danh sách các công trình có chi phí từ thấp đến cao. Nếu 2 công trình có chi phí bằng nhau sắp
#xếp tên thành phố theo bảng chữ cái building
SELECT name,cost FROM building order by cost, name ASC;
#EX4
SELECT * FROM architect WHERE name='le thanh tung'; 
# Hiển thị tên, năm sinh các công nhân có chuyên môn hàn hoặc điện
SELECT * FROM worker;
SELECT name, birthday FROM worker WHERE skill IN ("han", "dien");

# Hiển thị tên các công nhân có chuyên môn hàn hoặc điện và năm sinh lớn hơn 1948
SELECT name, birthday, skill FROM worker WHERE skill IN ("han", "dien") && birthday>1948;

# Hiển thị những công nhân bắt đầu vào nghề khi dưới 20 (birthday + 20 &gt; year)
SELECT * FROM worker WHERE year< (birthday + 20);

# Hiển thị những công nhân có năm sinh 1945, 1940, 1948 (Bằng 2 cách)
SELECT * FROM worker WHERE birthday IN  (1945, 1940, 1948); 
SELECT * FROM worker WHERE birthday=1945 OR birthday=1940 OR birthday=1948;

# Tìm những công trình có chi phí đầu tư từ 200 đến 500 triệu đồng (Bằng 2 cách)
SELECT * FROM building WHERE cost BETWEEN 200 AND 500; 
SELECT * FROM building WHERE cost>=200 AND cost<=500;

# Tìm kiếm những kiến trúc sư có họ là nguyen: % chuỗi
SELECT name FROM architect WHERE name LIKE"%nguyen%";
