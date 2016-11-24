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
     		 console.log(idno);
     		 $('.modal-body:first').html('');	
     		  $('.modal-body').prepend("</br><p> 이 선수를 정말로 명단에서 제외 시키시겠습니까?</p></br>"+
     				  "<input type='hidden' name='idno' value='"+idno+"' placeholder='"+idno+"'>"
     				  +
     				  "<div class='btn btn-danger releaseok1'>방출</div>"+
     				 "<div class='btn btn-primary gomarket1'>이적시장에 등록</div>"+
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
							$(self).closest('tr').html("");
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
