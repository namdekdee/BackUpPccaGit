<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	$(document)
			.ready(
					function() {
						//@naresh action dynamic childs
						var next = 0;
						$("#btnAddCaList")
								.click(	function(e) {
											e.preventDefault();										
											var addto = "#form" + next;
											var addRemove = "#form" + (next); 
											next = next + 1;
											var newIn = '<div id="form'+ next +'"> <div class="row" id="addCompanyDiv"><div class="form-group" id="formCompanyDiv"><label id="lblCaCompany" class="col-sm-3 control-label" required>เบิกจากบริษัท</label><div class="col-sm-6"><select id="ddlCompany" class="form-control" style="width: 100%;"	data-placeholder="เลือกบริษัท"><option value="PTG">PTG พีทีจี เอ็นเนอยี</option><option value="PTC">PTC พีทีซี</option><option value="PUN">PUN กาแฟพันธุ์ไทย</option>	<option value="PTGLG">PTGLG พีทีจี โลจิสติก</option></select></div>	</div></div><div class="row" id="addAmountCaDiv"><div class="form-group" id="AmountCaDiv"><label id="lblCaAmount" class="col-sm-3 control-label">จำนวนเงิน </label><div class="col-sm-2"><input type="text" id="inputCaAmount" class="form-control" placeholder="ระบุ..."></div></div></div></div><br>';
											var newInput = $(newIn);										
											var removeBtn = '<div class="col-sm-offset-8"><button id="remove'+ (next - 1)+ '" class="btn btn-danger remove-me" >Remove</button></div></div><div id="addList">';
											var removeButton = $(removeBtn);
											$(addto).after(newInput);
											$(addRemove).after(removeButton);
											$("#form" + next).attr('data-source',$(addto).attr('data-source'));
											$("#count").val(next);
											$('.remove-me')	.click(function(e) {
												e.preventDefault();
												alert(this.id)
												var fieldNum = this.id.charAt(this.id.length - 1);
												var formID = "#form"+ fieldNum;
												$(this).remove();
												$(formID).remove();
											});
										});

					});
</script>
<div class="col-xs-12">
	<div class="col-md-12">
		<h3>Actions</h3>
		<div id="field">
			<div id="field0">
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="action_id">Action
						Id</label>
					<div class="col-md-5">
						<input id="action_id" name="action_id" type="text" placeholder=""
							class="form-control input-md">

					</div>
				</div>
				<br> <br>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="action_name">Action
						Name</label>
					<div class="col-md-5">
						<input id="action_name" name="action_name" type="text"
							placeholder="" class="form-control input-md">

					</div>
				</div>
				<br> <br>
				<!-- File Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="action_json">Action
						JSON File</label>
					<div class="col-md-4">
						<input type="file" id="action_json" name="action_json"
							class="input-file" accept=".txt,.json">
						<div id="action_jsondisplay"></div>
					</div>
				</div>

			</div>
		</div>
		<!-- Button -->
		<div class="form-group">
			<div class="col-md-4">
				<button id="add-more" name="add-more" class="btn btn-primary">Add
					More</button>
			</div>
		</div>
		<br> <br>

	</div>
</div>

<div class="form-group">
	<div id="addList">
		<div id="form0">
			<div class="row" id="addCompanyDiv">
				<div class="form-group" id="formCompanyDiv">
					<label id="lblCaCompany" class="col-sm-3 control-label" required>เบิกจากบริษัท</label>
					<div class="col-sm-6">
						<select id="ddlCompany" class="form-control" style="width: 100%;"
							data-placeholder="เลือกบริษัท">
							<option value="PTG">PTG พีทีจี เอ็นเนอยี</option>
							<option value="PTC">PTC พีทีซี</option>
							<option value="PUN">PUN กาแฟพันธุ์ไทย</option>
							<option value="PTGLG">PTGLG พีทีจี โลจิสติก</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row" id="addAmountCaDiv">
				<div class="form-group" id="AmountCaDiv">
					<label id="lblCaAmount" class="col-sm-3 control-label">
						จำนวนเงิน </label>
					<div class="col-sm-2">
						<input type="text" id="inputCaAmount" class="form-control"
							placeholder="ระบุ...">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-3 col-sm-offset-5 control-label">
		<button type="button" style="width: 150px;"
			class="btn btn-primary center-block" id="btnAddCaList">เพิ่มรายการ</button>
	</div>
</div>

