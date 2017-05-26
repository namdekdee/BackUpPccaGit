<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	$('document').ready(function() {

		checkStatus();

	});
	
	function checkStatus(){
		
		if(status=='aprrover'){
			alert('approver')
			document.getElementById('lblHeadName').innerHTML = 'อนุมัติวงเงิน';
			$("#pcAddCredit :input").prop("disabled", true);
			$("#addCreditBtn").hide();
			$("#approverCmt").show();
			$("#approverCmt :input").prop("disabled", false);
			$("#approverBtn").show(); 
			$("#approverBtn :input").prop("disabled", false); 
		}
		else if(status=='requsetEdit'){
			alert('Request Edit')
			document.getElementById('lblHeadName').innerHTML = 'แก้ไขวงเงิน';
			$("#approverCmt").show();
			$("#approverCmt :input").prop("disabled", true);
			document.getElementById("ddlPcBranch").disabled = true;
			
		}
	}
</script>
<div id="pcAddCredit">
	<div class="row mainHead">

		<div class="col-md-4 col-xs-2 text-left">
			<!-- 			<span class="badge">5</span> -->
		</div>
		<div class="col-md-4 col-xs-8 text-center">
			<label id="lblHeadName">ตั้ง/เพิ่มวงเงิน</label>
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
					<label class="col-sm-3 control-label"> เลือกสาขา <!-- <span style="color: red;">*</span> -->
					</label>
					<div class="col-sm-6">
						<select id="ddlPcBranch" class="form-control select2" onchange=""
							style="width: 100%;">
							<option value="">บางปะหัน 1</option>
							<option value="">บางบัวทอง</option>
							<option value="">อยุธยา</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-sm-3 control-label"> วงเงินที่กำหนด <!-- <span style="color: red;">*</span> -->
					</label>
					<div class="col-sm-4">
						<input type="text" id="inputCreditAmount" class="form-control"
							placeholder="ระบุ...">
					</div>
					<label class="col-sm-1 control-label"
						style="text-align: -webkit-auto;">บาท</label>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-sm-3 control-label"> รายละเอียดเพิ่มเติม
					</label>
					<div class="col-sm-6">
						<textarea class="form-control" rows="5" id="txtMoreDetails"></textarea>
					</div>
				</div>
			</div>
			<div class="row" id="approverCmt" style="display: none;">
				<div class="form-group">
					<label class="col-sm-3 control-label">
						ความเห็นอนุมัติเพิ่มเติม </label>
					<div class="col-sm-6">
						<textarea class="form-control" rows="5" id="txtMoreDetails"></textarea>
					</div>
				</div>
			</div>

			<div class="row" id="addCreditBtn">
				<div class="form-group">
					<div>
						<div class="col-sm-2 col-sm-offset-4" style="display: flex;">
							<button type="button" style="width: 80%;"
								class="btn btn-danger center-block" id="btnCreditCancel"
								onclick="">ยกเลิก</button>
						</div>
						<div class="col-sm-2" style="display: flex;">
							<button type="button" style="width: 80%;"
								class="btn btn-success center-block" id="btnCreditReq"
								onclick="">ส่งอนุมัติ</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row" id="approverBtn" style="display: none;">
				<div class="form-group">
					<div>
						<div class="col-sm-2 col-sm-offset-3" style="display: flex;">
							<button type="button" style="width: 80%;"
								class="btn btn-danger center-block" id="btnReject" onclick="">ปฏิเสธ</button>
						</div>
						<div class="col-sm-2" style="display: flex;">
							<button type="button" style="width: 80%;"
								class="btn btn-warning center-block" id="btnReqEdit" onclick="">ส่งแก้ไข</button>
						</div>
						<div class="col-sm-2" style="display: flex;">
							<button type="button" style="width: 80%;"
								class="btn btn-success center-block" id="btnApproveC" onclick="">อนุมัติ</button>
						</div>
					</div>
				</div>
			</div>


		</div>
	</form>

</div>
<!--End pcAddCredit -->