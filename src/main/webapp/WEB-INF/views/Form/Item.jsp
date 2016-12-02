<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="section-3">
	<h2 class="text-center">ITEM</h2>
<div class="container2">
	</br>
		<div class="row">
			<div class="col-xs-12" id="demoContainer">
				<form id="registrationForm"
					class="form-horizontal fv-form fv-form-bootstrap"
					novalidate="novalidate" method="post" action="#">
					
					
					<div class="form-group">
				        <label class="col-xs-3 control-label">name</label>
					        <div class="col-xs-5">
					            <input type="text" class="form-control" name="name" value="empty" placeholder="Item name"/>
					        </div>
				    </div>
					

					  <div class="form-group">
					    <label class="col-xs-3 control-label"for="exampleInputAmount">price </label>
					    <div class="input-group col-xs-5">
					      	<input type="number" class="form-control" value="0"name="price"id="exampleInputAmount" placeholder="Amount">
					      	<div class="input-group-addon">원</div>
					    </div>
					  </div>
					  

					<div class="form-group">
						<label class="col-xs-3 control-label">count</label>
						<div class="col-xs-5">
							<input type="number" class="form-control" value="0"name="count" placeholder="수량"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-xs-3 control-label">company</label>
						<div class="col-xs-5">
							<input type="text" class="form-control" value="empty"name="company" placeholder="제공업체"/>
						</div>
					</div>
					

					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button type="submit" class="btn btn-primary" id="player_submit"name="player_submit"
								value="submit">등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
