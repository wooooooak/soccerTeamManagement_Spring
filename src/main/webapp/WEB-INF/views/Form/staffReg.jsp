<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="">
	<h2 class="text-center">STAFF</h2>
<div class="container2">
	</br>
		<div class="row">
			<div class="col-xs-12" id="demoContainer">
				<form id="registrationForm"
					class="form-horizontal fv-form fv-form-bootstrap"
					novalidate="novalidate" method="post" action="#">
					<div class="form-group">
				        <label class="col-xs-3 control-label">이름</label>
					        <div class="col-xs-3">
					            <input type="text" class="form-control" name="name" value="empty" placeholder="player name"/>
					        </div>
				    </div>
					

					  <div class="form-group">
					    <label class="col-xs-3 control-label"for="exampleInputAmount">주급 </label>
					    <div class="input-group col-xs-5">
					      	<input type="number" class="form-control" value="0"name="salary"id="exampleInputAmount" placeholder="Amount">
					      	<div class="input-group-addon">만원</div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-xs-3 control-label">전화번호 </label>
					    <div class="input-group col-xs-5">
					      	<input type="text" class="form-control" value="0"name="tel"id="" placeholder="tel">
					    </div>
					  </div>

					<div class="form-group">
						<label class="col-xs-3 control-label">birth</label>
						<div class="col-xs-5">
							<input type="number" class="form-control" value="0"name="birth" placeholder="예) 901111"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label">language</label>
						<div class="col-xs-5">
							<input type="input" class="form-control" value="english"name="language" placeholder="language"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label">career</label>
						<div class="col-xs-5">
							<input type="input" class="form-control" value="empty"name="career" placeholder="career"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label">country</label>
						<div class="col-xs-5">
							<input type="input" class="form-control" value="empty"name="country" placeholder="country"/>
						</div>
					</div>

					 <div class="form-group">
						<label class="col-xs-3 control-label">contract_end_time</label>
						<div class="col-xs-5">
							<input type="date" class="form-control" name="contract_end_time" />
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
						
						
						<label class="col-xs-3 control-label">포지션</label>
						<div class="col-xs-6">
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="director" />
									director
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="head_coach" />
									head coach
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="coach" />
									coach
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="medical" />
									medical
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="scouter" />
									scouter
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
</div>
