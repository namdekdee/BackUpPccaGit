<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<div id="pcRequest">
	<div class="row mainHead">

		<div class="col-md-4 col-xs-2 text-left">
			<!-- 			<span class="badge">5</span> -->
		</div>
		<div class="col-md-4 col-xs-8 text-center">
			<label id="lblHeadName">ใบเบิกเงินสดย่อย</label>
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
					<div class="col-sm-4 col-sm-offset-1">
						<button type="button" style="width: 80%;"
							class="btn btn-primary center-block" id="btnImport" onclick="">Import</button>
					</div>
					<label class="col-sm-2 control-label"> เลขที่เอกสารใบเบิก </label>
					<label class="col-sm-1 control-label"> CH170400002 </label> <label
						class="col-sm-2 control-label"> วันที่ </label> <label
						class="col-sm-1 control-label"> 30/04/17 </label>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-sm-2 control-label"> จ่ายให้ </label> <label
						class="col-sm-2 control-label" class="radio-inline"
						style="font-weight: 700;"><input type="radio"
						name="optReqester" value="" optRequester"
						class="setRadio">&nbsp;&nbsp;
						ผู้รับเงินในระบบ <span class="glyphicon glyphicon-search"></span></label>
					<div class="col-sm-3">
						<input type="text" id="inputCreditAmount" class="form-control"
							placeholder="">
					</div>
					<label class="col-sm-2 control-label" class="radio-inline"
						style="font-weight: 700;"><input type="radio"
						name="optEmpId" value="optEmpId" class="setRadio">&nbsp;&nbsp;
						พนักงานรหัส <span class="glyphicon glyphicon-search"></span></label> <label
						class="col-sm-2 control-label" class="radio-inline"
						style="font-weight: 700;"><input type="radio"
						name="optOther" value="optOther" class="setRadio">&nbsp;&nbsp;
						อื่นๆ</label>
				</div>
			</div>

			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>คชจ</th>
							<th>รายการ</th>
							<th>เดือน</th>
							<th>หน่วย</th>
							<td>จำนวนเงิน</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>00001</td>
							<td>ภาษี</td>
							<td></td>
							<td></td>
							<td>200
							<td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</form>
</div>
<!-- End pcRequest -->