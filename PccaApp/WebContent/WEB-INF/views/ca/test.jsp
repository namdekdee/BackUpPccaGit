<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
@media only screen and (max-width: 800px) {
	/* Force table to not be like tables anymore */
	#no-more-tables table, #no-more-tables thead, #no-more-tables tbody,
		#no-more-tables th, #no-more-tables td, #no-more-tables tr {
		display: block;
	}

	/* Hide table headers (but not display: none;, for accessibility) */
	#no-more-tables thead tr {
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	#no-more-tables tr {
		border: 1px solid #ccc;
	}
	#no-more-tables td {
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		padding-left: 50%;
		white-space: normal;
		text-align: left;
	}
	#no-more-tables td:before {
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%;
		padding-right: 10px;
		white-space: nowrap;
		text-align: left;
		font-weight: bold;
	}

	/*
	Label the data
	*/
	#no-more-tables td:before {
		content: attr(data-title);
	}
}
</style>
<div id="no-more-tables">
	<table
		class="col-md-12 table-bordered table-striped table-condensed cf">
		<thead class="cf">
			<tr>
				<th></th>
				<th>เลขที่รายการ</th>
				<th class="">ใบ</th>
				<th class="">จำนวนเงิน</th>
				<th class="">สถานะ</th>
			</tr>
		</thead>
		<tbody>
			<tr >
				<td data-title="">AAC</td>
				<td data-title="เลขที่รายการ">CH001170425</td>
				<td data-title="ใบ" class="numeric">2</td>
				<td data-title="จำนวนเงิน" class="numeric">1,500.00</td>
				<td data-title="สถานะ">ปิดสิ้นวัน</td>
			</tr>
			<tr>
				<td data-title="">AAC</td>
				<td data-title="เลขที่รายการ">CH001170425</td>
				<td data-title="ใบ" class="numeric">2</td>
				<td data-title="จำนวนเงิน" class="numeric">1,500.00</td>
				<td data-title="สถานะ">ปิดสิ้นวัน</td>
			</tr>
			<tr>
				<td data-title="">AAC</td>
				<td data-title="เลขที่รายการ">CH001170425</td>
				<td data-title="ใบ" class="numeric">2</td>
				<td data-title="จำนวนเงิน" class="numeric">1,500.00</td>
				<td data-title="สถานะ">ปิดสิ้นวัน</td>
			</tr>
		</tbody>
	</table>
</div>