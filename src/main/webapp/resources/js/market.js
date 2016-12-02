	    $('.order2').off('click').on('click',function(){
	    	var order=$(this).next().val();
	    	console.log("market order2 order by : " + order);	
	    	
	    	/*칼럼을 누를때마다 누른 이름에 효과*/
	    	$('.order2').each(function(){
	    		$(this).removeClass('onClk');
	    	});
	    	$(this).addClass('onClk');
	    	
	    	$('#marketTable').load('/web/marketOrderBy/'+order);
	    	return false;
	    });
    
    
    //이적시장에서 우리팀이 내보낸 선수는 css : disabled 처리
    $(function(){
    	$('.whodisabled').each(function(){
    		if($(this).children(".curclub").text()=="our"){
    			$(this).addClass("disabled");
    		}
    	});
    });
    
  	  $('.fpregist').on('click',function(){
  		  console.log(".fpregist click");
  		  var self = this;
  		  var name= $(this).text();
  		 var idno = $(this).next().val();
  		 console.log("선수의 idno : "+idno);
  		 $('.modal-body:first').html('');	
  		  $('.modal-body').prepend(
  				  "<div class='container2'>"+
	  				  "</br><p class='text-center lead'> <u>"+name+"</u> 선수를 선수진에 추가하려면</br> 데이터를 입력하세요</p></br>"+
	  				  
	  				  "<input type='hidden' id='idno' name='idno' value='"+idno+"' placeholder='"+idno+"'>"+
	  				  
	  				'<form id="registrationForm" class="form-horizontal fv-form fv-form-bootstrap"'+
						'novalidate="novalidate" method="post" action="#">'+
				  				"<div class='form-group'>"+
				  				  '<label class="col-xs-3 control-label">salary</label>'+
				  				  "<div class='col-xs-3'><input id='mksal'class='form-control' type='number' name='salary' placeholder='salary'/>"+
				  				  "</div>"+
				  				"</div>"+
			  			
				  			  '<div class="form-group">'+
							    '<label class="col-xs-3 control-label"for="exampleInputAmount">이적료 </label>'+
							    '<div class="input-group col-xs-5">'+
							      	'<input type="number" id="fee" class="form-control" name="transfer_fee"id="exampleInputAmount" placeholder="Amount">'+
							      	'<div class="input-group-addon">만원</div>'+
							    '</div>'+
							  '</div>'+
			  				
			  				"<div class='form-group'>"+
								"<label class='col-xs-3 control-label'>계약 기간</label>"+
								"<div class='col-xs-5'>"
									+"<input id='day' type='date' class='form-control' name='contract_end_time' />"
								+"</div>"+
							"</div></br>"+
						"</form>"+
						
						'<div class="btn-group btn-group-justified" role="group">'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-danger registok1">명단에 등록</button>'+
						  '</div>'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-success delete1">WISH LIST에서 제외</button>'+
						  '</div>'+
						  '<div class="btn-group" role="group">'+
						    '<button type="button" class="btn btn-warning registno1">취소</button>'+
						  '</div>'+
						'</div>'+
  				  "</div>");
  		  
  		  /*예 버튼을 눌렀을때 희망목록에서 사라지고 영입됨*/
  		  $('.registok1').on('click',function(){
  			  var idno = $('#idno').val();
  			  var day = $('#day').val();
  			  var salary = $('#mksal').val();
  			  var fee=$("#fee").val();
  			  $('#example-modal').modal('hide');
  			  
  			  /*예 버튼을 눌렀을때 서버와 통신 이후 모달창 닫기
  			   * 만약 주급, 이적료, 계약날짜중 하나라도 입력하지 않을경우 아무 반응이 일어나지않음
  			   * */
  			  $.ajax({
					type : 'POST',
					url : '/web/data/gotoOurList/' + idno+"/"+salary+"/"+day+"/"+fee,
					headers : {
						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
					},
					success : function(result) {

						if (result == 'success') {
							$.ajax({
						  		type : 'DELETE',
								url : '/web/data/marketDelete/' + idno,
								dataType : 'text',
								headers : {
									"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
								}
						  	}).done(function(result){
						  		$(self).closest('tr').html("");
						  		alert("등록 성공");
					    	})
						}
					}
				}).fail(function( jqXHR, textStatus ) {
		    		  alert("데이터를 빠짐없이 입력해주세요.");
		    	}) ;
  		  });
  		  
  		  /*희망목록에서만 삭제 (우리선수에 영입되진 않음)*/
  		  $('.delete1').on('click',function(){
  			var idno = $('#idno').val(); // .gomarket의 이전이전 요소 의 값 = hidden 속성의 idno
 			  console.log("idno : " + idno);
 			  $('#example-modal').modal('hide');
 			  	$.ajax({
 			  		type : 'DELETE',
 					url : '/web/data/marketDelete/' + idno,
 					headers : {
 						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8"
 					},
 					success : function(result){
 						$(self).closest('tr').html("");
 						console.log("market delete success");
 					}
 			  	}); //ajax end
 			  	return false;
  		  });
  		  
  		  
  		  /*취소를 눌렀을때 모달 창 닫기*/
  		 $('.registno1').on('click',function(){
  			 $('#example-modal').modal('hide');
  		 });
  		 
       });
     // ON CLICK PLAYER END
    
    
    
    
    
    