/**
 * 
 */  function EasyPeasyParallax() {
    	scrollPos = $(this).scrollTop();
    	$('.p1').css({
    		'background-position' : '70% ' + (-scrollPos/4)+"px"
    	});
      $('.p2').css({
    		'background-position' : '60% ' + (-scrollPos/15)+"px"
    	});
      $('.p3').css({
    		'background-position' : '70% ' + (-scrollPos/30)+"px"
    	});
      $('.p4').css({
    		'background-position' : '80% ' + (-scrollPos/45)+"px"
    	});
    	$('.parallax-text').css({
    		'margin-top': (scrollPos/2)+"px",
    		'opacity': 1-(scrollPos/230)
    	});
    }

 	$(document).ready(function(){
    	$(window).scroll(function() {
    		EasyPeasyParallax();
    	});
    });
    
    
    
    $(window).on("load resize ", function() {
    	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
    	  $('.tbl-header').css({'padding-right':scrollWidth});
    	}).resize();
    
       $('.p4>hgroup').on('click',function(){
    	$.getJSON("data/listAll",function(data){
    		console.log(data);
    	});
    });
       $('c:forEach').on('click',function(){
    	   alret("Dd");
       });
       
       
       /*선수 제거시 모달창 제어*/
     	  $('.fprelease').on('click',function(){
     		  var self = this;
     		  console.log(".fprelease click");
     		  var name = $(this).text();
     		 var idno = $(this).next().val();
     		 var salary = $(this).next().next().val();
     		 var goal = $(this).next().next().next().val();
     		 var assist = $(this).next().next().next().next().val();
     		 var position = $(this).next().next().next().next().next().val();
     		 var grade = $(this).next().next().next().next().next().next().val();
     		 var backno= $(this).next().next().next().next().next().next().next().val();
     		 var pDay =$(this).parent().nextAll('.pDay').text();
     		 console.log("선수의 idno : "+idno+"선수의 gola : " + goal);
     		 $('.modal-body:first').html('');	
     		  $('.modal-body').prepend("</br><p class='text-center lead'> <u>" + name + "</u> 선수의 정보를 수정하려면 </br>데이터를 입력하세요.</p></br>"+
     				  "<input type='hidden' name='idno' id='idno' value='"+idno+"' placeholder='"+idno+"'>"
     				  +
     				 '<form id="registrationForm" class="form-horizontal fv-form fv-form-bootstrap"'+
						'novalidate="novalidate" method="post" action="#">'+
						"<input type='hidden' name='idno' id='idno' value='"+idno+"' placeholder='"+idno+"'>"+
			  				"<div class='form-group'>"+
			  				  '<label class="col-xs-3 control-label">salary</label>'+
			  				  "<div class='col-xs-3'><input id='sal'class='form-control' type='number' value='"+salary+"' name='salary' placeholder='salary'/>"+
			  				  "</div>"+
			  				"</div>"+
		  			
			  				'<div class="form-group has-feedback"> '+
							'<label class="col-xs-3  control-label">goal</label>'+
							'<div class="col-xs-3">'+
								'<input type="number" class="form-control" id="goal"value="'+goal+'" name="goal" placeholder="경기당 골"/>'+
							'</div>'+
							'<label class="col-xs-3  control-label">assist</label>'+
							'<div class="col-xs-3">'+
								'<input type="number" class="form-control"id="assist" value="'+assist+'" name="assist" placeholder="평균 어시스트"/>'+
							'</div>'+
							'<label class="col-xs-3 control-label">grade</label>'+
							'<div class="col-xs-3">'+
								'<select class="form-control" name="grade" id="grade"value="'+grade+'"placeholder="평균 평점">'+
								'<option>10</option>'+
								'<option>9</option>'+
								'<option>8</option>'+
								'<option>7</option>'+
								'<option>6</option>'+
								'<option>5</option>'+
								'<option>4</option>'+
								'<option>3</option>'+
								'<option>2</option>'+
								'<option>1</option>'+
								'</select>'+
							'</div>'+
							'<label class="col-xs-3 control-label"for="backno">등번호</label>'+
							'<div class="col-xs-3">'+
								'<input type="number" class="form-control" id="backno" value="'+backno+'"name="backno" placeholder="등번호"aria-describedby="inputError2Status"/>'+
							'</div>'+
						'</div>'+
		  				
		  				"<div class='form-group'>"+
							"<label class='col-xs-3 control-label'>계약 기간</label>"+
							"<div class='col-xs-5'>"
								+"<input id='day' type='date' value = '"+pDay+"'class='form-control' name='contract_end_time' />"
							+"</div>"+
						"</div></br>"+
     				  "</form>"+
     				  
     					'<div class="btn-group btn-group-justified" role="group">'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-danger releaseok1">방출</button>'+
						  '</div>'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-success gomarket1">이적시장에 등록</button>'+
						  '</div>'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-info update1">수정</button>'+
						  '</div>'+
						  '<div class="btn-group" role="group">'+
						  	'<button type="button" class="btn btn-warning releaseno1">취소</button>'+
						  '</div>'+
						'</div>');
     				  
     				  

     		  
     		  /*  방출 버튼을 눌렀을때 수행되는 자바스크립트 코드 
     		   * 선수목록에서 제외됨
     		   * 서버의 url : '/web/data/fprelease/' + idno, 부분이 호출됨
     		   * */
     		  $('.releaseok1').on('click',function(){
     			  var idno = $('#idno').val(); // 이부분 수정해야됨
     			  console.log("선수 방출 idno : " + idno);
     			  $('#example-modal').modal('hide');
     			  
     			  /*예 버튼을 눌렀을때 서버와 통신 이후 모달창 닫기*/
     			  $.ajax({
					type : 'DELETE',
					url : '/web/data/fprelease/' + idno,
					headers : {
						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
					},
					success : function(result) {

						if (result == 'success') {
							$(self).closest('tr').html("");
							alert("방출되었습니다.")// 테이블에서 사라짐
							financejsp();
						}
					}
				});
     			  return false;
     		  });
     		  

     		  $('.update1').on('click',function(){
     			 var data=$('#registrationForm').serialize();
     			  alert(data);
     			  $('#example-modal').modal('hide');
     			  
     			  /*예 버튼을 눌렀을때 서버와 통신 이후 모달창 닫기*/
     			  $.ajax({
     				  type : 'POST',
     				  url : '/web/data/updatePlayer',
     				  data: data,
     				  headers : {
     					  "Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
     				  },
     				  success : function(result) {
     					  
     					  if (result == 'success') {
     						  alert("수정 완료");
     						 $('#fptable').load('/web/listAllOrderBy/name');
     						financejsp();
     						  
     					  }
     				  }
     			  });
     			  return false;
     		  });
     		  
     		  
     		  /*이적시장 등록을 눌렀을때 코드   여기부터 ---------------------------*/
     		  
     		  /*이적시장등록을 눌렀을때 방출은 되지않지만 이적시장에 올라감*/
     		  $('.gomarket1').on('click',function(){
     			 var idno = $('#idno').val();
    			  alert("이적시장에 등록한 선수 idno : " +idno);
    			  $('#example-modal').modal('hide');
    			  	$.ajax({
    			  		type : 'GET',
    					url : '/web/data/marketRegist/' + idno,
    					headers : {
    						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
    					},
    					success : function(result){
    						console.log("market regist success");
    					}
    			  		
    			  	}); //ajax end
    			  	return false;
     		  });
     		  
     		 /* 여기까지------------------------------------------------------------------ */
     		  
     		  /*취소를 눌렀을때 모달 창 닫기*/
     		 $('.releaseno1').on('click',function(){
     			 $('#example-modal').modal('hide');
     		 });
     		 
       }); // ON CLICK PLAYER END
       
     	  
     	  
      /*스텝 이름을 눌렀을 경우*/
     	  $('.staffrelease').on('click',function(){
     		  var self = this;
     		  var name = $(this).text();
     		  var pno = $(this).next().val();
     		  var salary = $(this).next().next().val();
     		  var tel = $(this).next().next().next().val();
     		  var career = $(this).next().next().next().next().val();
     		 var position =$(this).parent().next().text();
     		  var staffDay =$(this).parent().nextAll('.staffDay').text();
     		 console.log("staffrelease click : " + name)
     		 $('.modal-body:first').html('');	
     		  $('.modal-body').prepend("</br><p class='text-center lead'> <u>" + name + "</u> 의 정보를 수정하려면 </br>데이터를 입력하세요.</p></br>"+
     				  "<input type='hidden' name='pno' id='pno' value='"+pno+"' placeholder='"+pno+"'>"+
     				 '<form id="staffUpdate" class="form-horizontal fv-form fv-form-bootstrap"'+
						'novalidate="novalidate" method="post" action="#">'+
						"<input type='hidden' name='pno' id='pno2' value='"+pno+"' placeholder='"+pno+"'>"+
			  				"<div class='form-group'>"+
			  				  '<label class="col-xs-3 control-label">salary</label>'+
			  				  "<div class='col-xs-3'><input id='sal2'class='form-control' type='number' value='"+salary+"' name='salary' placeholder='salary'/>"+
			  				  "</div>"+
			  				"</div>"+
		  			
			  				'<div class="form-group"> '+
								'<label class="col-xs-3  control-label">position</label>'+
								'<div class="col-xs-5">'+
									'<input type="text" class="form-control" id="position2"value="'+position+'" name="position" placeholder="경기당 골"/>'+
								'</div>'+
							"</div>"+
							
							'<div class="form-group"> '+
								'<label class="col-xs-3  control-label">tel</label>'+
								'<div class="col-xs-5">'+
									'<input type="text" class="form-control" id="tel2" value="'+tel+'" name="tel" placeholder="tel"/>'+
								'</div>'+
							"</div>"+
							'<div class="form-group"> '+
							'<label class="col-xs-3  control-label">career</label>'+
							'<div class="col-xs-5">'+
							'<input type="text" class="form-control" id="career2" value="'+career+'" name="career" placeholder="career"/>'+
							'</div>'+
							"</div>"+
							
		  				
			  				"<div class='form-group'>"+
								"<label class='col-xs-3 control-label'>계약 기간</label>"+
								"<div class='col-xs-5'>"
									+"<input id='day' type='date2' value='"+ staffDay+"'class='form-control' name='contract_end_time' />"
								+"</div>"+
							"</div></br>"+
  				  "</form>"+
     				  
     				 '<div class="btn-group btn-group-justified" role="group">'+
					  '<div class="btn-group" role="group">'+
					    '<button type="button" class="btn btn-danger releaseok2">명단에서 제외</button>'+
					  '</div>'+
					  '<div class="btn-group" role="group">'+
					  	'<button type="button" class="btn btn-info update2">수정</button>'+
					  '</div>'+
					  '<div class="btn-group" role="group">'+
					    '<button type="button" class="btn btn-warning releaseno2">취소</button>'+
					  '</div>'+
					'</div>');
     		  
     		  /*예 버튼을 눌렀을때*/
     		  $('.releaseok2').on('click',function(){
     			  var pno = $('#pno').val();
     			  console.log("스텝 방출 pno : " + pno);
     			  $('#example-modal').modal('hide');
     			  
     			  /*예 버튼을 눌렀을때 서버와 통신 이후 모달창 닫기*/
     			  $.ajax({
					type : 'DELETE',
					url : '/web/data/staffrelease/' + pno,
					headers : {
						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
					},
					success : function(result) {

						if (result == 'success') {
							$(self).closest('tr').html("");
							financejsp();
						}
					}
				});
     			  return false;
     		  });
     		  
     		  $('.update2').on('click',function(){
     			 
    			 var data=$('#staffUpdate').serialize();
      			  alert(data);
      			$('#example-modal').modal('hide');
      			  $.ajax({
      				  type : 'POST',
      				  url : '/web/data/updateStaff',
      				  data: data,
      				  headers : {
      					  "Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
      				  },
      				  success : function(result) {
      					  
      					  if (result == 'success') {
      						  alert("스텝 수정 완료");
      						$('#stafftable').load('/web/staffListAllOrderBy/name');
      						financejsp();
      					  }
      				  }
      			  });
     			  return false;
      		  });
     		  
     		  /*아니오를 눌렀을때 모달 창 닫기*/
     		 $('.releaseno2').on('click',function(){
     			 $('#example-modal').modal('hide');
     		 });
     		 
       });
       
    
    /*
     * 테이블 정렬
     * $('.order').on('click',function(){
     * 이렇게만 했을경우 클릭의 횟수가 2의 제곱만큼 계속 늘어나서 과부하가일어났음.
     * .off()를 추가해서 해결
     * */
    $('.order').off('click').on('click',function(){
    	var order=$(this).next().val();
    	console.log("playerList order by : " + order);	
    	 /*load때문에 한번씩 더 클릭할때마다 클릭이 2배 늘어난 것으로 처리된다.*/
    	$('#fptable').load('/web/listAllOrderBy/'+order);
    	return false;
    });
 
    
    /*스텝 테이블 정렬*/
    
    $('.order2').off('click').on('click',function(){
    	var order=$(this).next().val();
    	console.log("staffList order by : " + order);	
    	$('#stafftable').load('/web/staffListAllOrderBy/'+order);
    	return false;
    });
    
    
    function financejsp(){
    	$('#financeView').load('/web/finance');
    }
    
