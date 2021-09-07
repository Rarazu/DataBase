-- membuat user
create user 'rara_xir4_31'@'localhost' identified by 'rarazu';

-- ubah hak akses
grant all privileges on *.* to 'rara_xir4_31'@'localhost';

flush privileges;

grant drop, create on *.* to 'rara_xir4_31'@'localhost';

-- mencabut hak akses
revoke all privileges on *.* from 'rara_xir4_31'@'localhost';

-- hapus 
drop user 'rara_xir4_31'@'localhost';