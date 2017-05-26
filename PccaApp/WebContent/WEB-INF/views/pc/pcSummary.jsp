<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
@media only screen and (max-width: 800px) {
	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr {
		display: block;
	}

	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr {
		/* 		position: absolute; */
		/* 		top: -9999px; */
		/* 		left: -9999px; */
		
	}
	#no-more-tables tr {
		border: 1px solid #ccc;
	}
	td {
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		/* 		padding-left: 50%; */
		white-space: normal;
		text-align: left;
	}
	td:before {
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
	td:before {
		content: attr(data-title);
	}
}

.subTable {
	margin: 0 auto;
	width: 70%;
}

.subTableHead {
	background: greenyellow;
}
</style>

<div id="pcSummary">
	<div class="row mainHead">

		<div class="col-md-4 col-xs-2 text-left">
			<!-- 			<span class="badge">5</span> -->
		</div>
		<div class="col-md-4 col-xs-8 text-center">
			<label id="lblHeadName">สรุปเบิกเงินสดย่อย</label>
		</div>
		<div class="col-md-4 col-xs-2 text-right">
			<!-- 			<label id="lblDlgName" class="glyphicon glyphicon-remove-circle"></label> -->
		</div>
	</div>

	<div class="row headDetails">
		<div class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1"
			style="padding-top: 5px;">
			<label id="lblCaNo">590003</label>
		</div>
		<div class="col-xs-6 col-md-4"
			style="text-align: justify; padding-top: 5px;">
			<label id="lblCaNo">นายอัครพงษ์ สกุลทอง</label>
		</div>
		<br>
		<div class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1">
			<label id="lblEmpId">ผู้จัดการสาขา บางปะหัน1</label>
		</div>
		<div class="col-xs-6 col-md-4">
			<label id="lblEmpName"></label>
		</div>
	</div>
	<br>

	<form class="form-horizontal"
		style="padding-left: 10px; padding-right: 10px;">
		<div class="box-body">
			<div class="row">
				<div class="form-group">
					<div class="col-sm-3 col-sm-offset-3" style="display: flex;">
						<button type="button" style="width: 80%;"
							class="btn btn-primary center-block" id="btnAddList" onclick="">เพิ่มรายการ</button>
					</div>
					<div class="col-sm-3" style="display: flex;">
						<button type="button" style="width: 80%;"
							class="btn btn-success center-block" id="btnReqAprv" onclick="">ส่งอนุมัติ</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h5>วันที่</h5>
		</div>
		<div class="panel-body">
			<table class="table table-condensed"
				style="border-collapse: collapse;">
				<thead style="background: rgba(60, 141, 188, 0.71);">
					<tr>
						<th>&nbsp;</th>
						<th>เลขที่เอกสาร</th>
						<th>ใบ</th>
						<th>จำนวนเงิน</th>
						<th>สถานะ</th>
					</tr>
				</thead>

				<tbody>
					<tr data-toggle="collapse" data-target="#demo1"
						class="accordion-toggle">
						<td><button class="btn btn-default btn-xs">
								<span class="glyphicon glyphicon-plus-sign"></span>
							</button></td>
						<td>CH001170425</td>
						<td>2</td>
						<td>1,500.00</td>
						<td>ปิดสิ้นวัน</td>

					</tr>
					<tr>
						<td colspan="12" class="hiddenRow"><div
								class="accordian-body collapse" id="demo1">
								<table class="table table-striped subTable">
									<thead class="subTableHead">
										<tr>
											<th>ใบเบิกเงินสดย่อย</th>
											<th>วันที่</th>
											<th>จำนวนเงิน</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>CH170400002</td>
											<td>25/04/17</td>
											<td>1,000</td>
										</tr>
									</tbody>
								</table>

							</div></td>
					</tr>
					<tr data-toggle="collapse" data-target="#demo2"
						class="accordion-toggle">
						<td><button class="btn btn-default btn-xs">
								<span class="glyphicon glyphicon-plus-sign"></span>
							</button></td>
						<td>CH001170425</td>
						<td>2</td>
						<td>1,500.00</td>
						<td>ปิดสิ้นวัน</td>
					</tr>
					<tr>
						<td colspan="6" class="hiddenRow"><div id="demo2"
								class="accordian-body collapse">
								<table class="table table-striped subTable">
									<thead class="subTableHead">
										<tr>
											<th>ใบเบิกเงินสดย่อย</th>
											<th>วันที่</th>
											<th>จำนวนเงิน</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>CH170400002</td>
											<td>25/04/17</td>
											<td>1,000</td>
										</tr>
									</tbody>
								</table>

							</div></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<form class="form-horizontal"
		style="padding-left: 10px; padding-right: 10px;">
		<div class="box-body">
			<div class="row">
				<div class="form-group">
					<label class="col-sm-4 control-label">
						ความเห็นผู้ส่งอนุมัติเพิ่มเติม </label>
					<div class="col-sm-5">
						<textarea class="form-control" rows="5" id="txtMoreDetails"></textarea>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>