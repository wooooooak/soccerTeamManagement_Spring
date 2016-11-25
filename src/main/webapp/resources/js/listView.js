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
     		 var idno = $(this).next().val();
     		 var salary = $(this).next().next().val();
     		 var goal = $(this).next().next().next().val();
     		 var assist = $(this).next().next().next().next().val();
     		 var position = $(this).next().next().next().next().next().val();
     		 var grade = $(this).next().next().next().next().next().next().val();
     		 var backno= $(this).next().next().next().next().next().next().next().val();
     		 var contract_end_time= $(this).next().next().next().next().next().next().next().next().val();
     		 console.log("선수의 idno : "+idno+"선수의 gola : " + goal);
     		 $('.modal-body:first').html('');	
     		  $('.modal-body').prepend("</br><p class='text-center'> 옵션을 선택하세요.</p></br>"+
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
							"<label class='col-xs-3 control-label'>contract_end_time</label>"+
							"<div class='col-xs-5'>"
								+"<input id='day' type='date' class='form-control' value='"+contract_end_time+"' name='contract_end_time' />"
							+"</div>"+
						"</div></br>"+
     				  
     				  "<div class='btn btn-danger releaseok1'>방출</div>"+
     				 "<div class='btn btn-primary gomarket1'>이적시장에 등록</div>"+
     				 "<div class='btn btn-primary update1'>수정</div>"+
     				  "<div class='btn btn-warning releaseno1'>취소</div>");
     		  
     		  /*예방출 버튼을 눌렀을때 선수목록에서 제외됨*/
     		  $('.releaseok1').on('click',function(){
     			  var idno = $(this).prev().val();
     			  console.log(idno);
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
							$(self).closest('tr').html(""); // 테이블에서 사라짐
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
     						  
     					  }
     				  }
     			  });
     			  return false;
     		  });
     		  
     		  
     		  /*이적시장등록을 눌렀을때 방출은 되지않지만 이적시장에 올라감*/
     		  $('.gomarket1').on('click',function(){
     			 var idno = $(this).prev().prev().val(); // .gomarket의 이전이전 요소 의 값 = hidden 속성의 idno
    			  alert(idno);
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
     		  
     		  
     		  
     		  /*취소를 눌렀을때 모달 창 닫기*/
     		 $('.releaseno1').on('click',function(){
     			 $('#example-modal').modal('hide');
     		 });
     		 
       }); // ON CLICK PLAYER END
       
     	  
     	  
      /*스텝 이름을 눌렀을 경우*/
     	  $('.staffrelease').on('click',function(){
     		  var self = this;
     		  console.log("staffrelease click")
     		 var pno = $(this).next().val();
     		 $('.modal-body:first').html('');	
     		  $('.modal-body').prepend("</br><p> 이 스텝을 정말로 명단에서 제외 시키시겠습니까?</p>"+
     				  "<input type='hidden' name='pno' value='"+pno+"' placeholder='"+pno+"'>"
     				  +
     				  "<div class='btn btn-primary releaseok2'>예</div>"+
     				  "<div class='btn btn-warning releaseno2'>아니오</div>");
     		  
     		  /*예 버튼을 눌렀을때*/
     		  $('.releaseok2').on('click',function(){
     			  var pno = $(this).prev().val();
     			  console.log(pno);
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
     * */
    $('.order').off('click').on('click',function(){
    	var order=$(this).next().val();
    	console.log("playerList order by : " + order);	
    	 /*load때문에 한번씩 더 클릭할때마다 클릭이 2배 늘어난 것으로 처리된다.*/
    	$('#fptable').load('/web/listAllOrderBy/'+order);
    	return false;
    });
 
    $('.order2').off('click').on('click',function(){
    	var order=$(this).next().val();
    	console.log("staffList order by : " + order);	
    	$('#stafftable').load('/web/staffListAllOrderBy/'+order);
    	return false;
    });
