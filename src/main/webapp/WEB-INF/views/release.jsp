<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	</br>
	<h2 class="text-center">player</h2>
<div class="container2">
	</br>
		<div class="row">
			<div class="col-xs-12" id="demoContainer">
				<form id="registrationForm"
					class="form-horizontal fv-form fv-form-bootstrap"
					novalidate="novalidate" method="post" action="#">
					<div class="form-group">
				        <label class="col-xs-3 control-label">name</label>
					        <div class="col-xs-3">
					            <input type="text" class="form-control" name="name" value="empty" placeholder="player name"/>
					        </div>
					        <div class="col-xs-3">
					            <input type="text" class="form-control" name="agent"value="empty" placeholder="agent name" />
					        </div>
				    </div>
					
					

					<div class="form-group form-inline">
						<label class="col-xs-3 control-label">이적 할 구단</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" name="curclub" value="empty" placeholder="club name" />
						</div>
					</div>

					  <div class="form-group">
					    <label class="col-xs-3 control-label"for="exampleInputAmount">이적료 </label>
					    <div class="input-group col-xs-5">
					      	<input type="number" class="form-control" value="0"name="transfer_fee"id="exampleInputAmount" placeholder="Amount">
					      	<div class="input-group-addon">만원</div>
					    </div>
					  </div>


					 <div class="form-group">
						<label class="col-xs-3 control-label">contract_end_time</label>
						<div class="col-xs-5">
							<input type="date" class="form-control" name="contract_end_time" />
						</div>
					</div> 
					
					
					<div class="form-group form-inline"> 
						<label class="col-xs-3 control-label">등번호</label>
						<div class="col-xs-2">
							<input type="number" value="0"class="form-control" name="backno" placeholder="현재 등번호"/>
						</div>
					</div>
					

					<div class="form-group">
						<label class="col-xs-3 control-label">Gender</label>
						<div class="col-xs-6">
							<div class="radio">
								<label> <input type="radio" name="gender" value="male" checked/>
									Male
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="gender" value="female" />
									Female
								</label>
							</div>
						</div>
					</div>
					

					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button type="submit" class="btn btn-primary" id="player_submit"name="player_submit"
								value="submit">저장</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
