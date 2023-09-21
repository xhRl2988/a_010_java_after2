select * from EMP_MASTER;

//상품마스터 테이블 명세서
create table tbl_product_master (
	pdt_id				number(5) primary key,	--상품코드
	pdt_id_name			varchar2 (30),			--상품명
	pdt_unit_price		number(7),				--단가
	pdt_order_method	number(1)   			--주문방법 1단품 2세트 3추가
);

create table tbl_order_list (
	ord_no				number(5),  			--주문번호
	ord_count			number(3),				--count
	ord_pdt_id			number(5),				--상품코드
	ord_buying_count	number(3),				--주문수량
	ord_pdt_unit_price	number(7),				--상품단가
	ord_price			number(9),				--금액
	primary key(ord_no,ord_count)
);

create table tbl_order_total (
	tot_ord_no			number(5) primary key,	--주문번호
	tot_ord_price		number(9),				--금액
	tot_buying_method	number(1),				--지급방법 카드1 현금2
	tot_in_money		number(7),				--받은 돈
	tot_out_money		number(7),				--거스름 돈
	tot_system_date		date					--system_date
);
