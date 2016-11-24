<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="">
	<h2 class="text-center">위시리스트</h2>
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
						<label class="col-xs-3 control-label">소속 구단</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" name="curclub" value='empty' placeholder="club"/>
						</div>
				    </div>
				    
					 <div class="form-group">
				        <label class="col-xs-3 control-label">국적</label>
					        <div class="col-xs-3">
					            <input type="text" class="form-control" name="country" value="korea" placeholder="country"/>
					        </div>
						<label class="col-xs-3 control-label">언어</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" name="language" value='english' placeholder="language"/>
						</div>
				    </div> 
					
					<div class="form-group">
						<label class="col-xs-3 control-label">birth</label>
						<div class="col-xs-3">
							<input type="number" class="form-control" value="0"name="birth" placeholder="예) 901111"/>
						</div>
						<label class="col-xs-3  control-label">goal</label>
						<div class="col-xs-3">
							<input type="number" value="0"class="form-control" name="goal" placeholder="경기당 골"/>
						</div>
					</div>					
					
					<div class="form-group has-feedback"> 
						<label class="col-xs-3  control-label">assist</label>
						<div class="col-xs-3">
							<input type="number"value="0" class="form-control" name="assist" placeholder="평균 어시스트"/>
						</div>
						<label class="col-xs-3 control-label">grade</label>
						<div class="col-xs-3">
							<select class="form-control" name="grade" placeholder="평균 평점">
							<option>10</option>
							<option>9</option>
							<option>8</option>
							<option>7</option>
							<option>6</option>
							<option>5</option>
							<option>4</option>
							<option>3</option>
							<option>2</option>
							<option>1</option>
							</select>
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
						<label class="col-xs-3 control-label">사용하는 발</label>
						<div class="col-xs-6">
							<div class="radio-inline">
								<label> <input type="radio" name="side_footer" value="right" checked />
									right
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="radio" name="side_footer" value="left" />
									left
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="radio" name="side_footer" value="both" />
									both
								</label>
							</div>
						</div>
					</div>


					<div class="form-group">
						
						
						<label class="col-xs-3 control-label">포지션</label>
						<div class="col-xs-6">
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="MF" />
									MF
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="DF" />
									DF
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="FW" />
									FW
								</label>
							</div>
							<div class="checkbox-inline">
								<label> <input type="checkbox" name="position" value="GK" />
									GK
								</label>
							</div>
						</div>
					</div>


					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button type="submit" class="btn btn-primary" name="player_submit"
								value="submit">저장</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
