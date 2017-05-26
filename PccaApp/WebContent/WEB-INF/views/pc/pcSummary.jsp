<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.titlePcSum {
	background: rgba(243, 156, 18, 0.8);
	height: 2.5em;
}
</style>
<div id="pcSummary">
	<div class="row"
		style="background-color: #DCDCDC; padding-top: 0em; display: flex; flex-flow: row nowrap;">

		<div class="col-md-4 col-xs-2 text-left">
			<!-- 			<span class="badge">5</span> -->
		</div>
		<div class="col-md-4 col-xs-8 text-center">
			<label id="lblHeadName"><h3>สรุปเบิกเงินสดย่อย</h3></label>
		</div>
		<div class="col-md-4 col-xs-2 text-right">
			<!-- 			<label id="lblDlgName" class="glyphicon glyphicon-remove-circle"></label> -->
		</div>
	</div>

	<div class="row" style="background-color: rgba(81, 239, 0, 0.17);">
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
					<div class="col-sm-2 col-sm-offset-4 control-label">
						<button type="button" style="width: 150px;"
							class="btn btn-primary center-block" id="btnAddPcList" onclick="">เพิ่มรายการ</button>
					</div>
					<div class="col-sm-3 control-label">
						<button type="button" style="width: 150px;"
							class="btn btn-success center-block" id="btnReqAprv" onclick="">ส่งอนุมัติ</button>
					</div>
				</div>
			</div>
			<div class="row titlePcSum">
				<div class="form-group">
					<div class="col-sm-1 control-label"></div>
					<div class="col-sm-2 control-label">| เลขที่เอกสาร</div>
					<div class="col-sm-1 control-label">| ใบ</div>
					<div class="col-sm-2 control-label">| จำนวนเงิน</div>
					<div class="col-sm-2 control-label">| สถานะ</div>
				</div>
			</div>


		</div>
		<!-- End Box-body -->
	</form>


</div>
<!-- End PcSummary -->