/**
 * 
 */  function EasyPeasyParallax() {
    	scrollPos = $(this).scrollTop();
    	$('.p1').css({
    		'background-position' : '50% ' + (-scrollPos/4)+"px"
    	});
      $('.p2').css({
    		'background-position' : '60% ' + (-scrollPos/60)+"px"
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
    	$('#feedback').text("등번호가 겹칩니다.");
    	/*선수 영입 정보 입력시 기존 선수와 등번호가 겹치면 경고를 줌*/
    	$.getJSON("data/listAll",function(data){
    		$('#backno').on('blur',function(){
    			var backno = $('#backno').val();
    			console.log(backno);
    			$(data).each(function(){
    				if(backno==this.backno){
    					alert("같은번호 존재 : " + this.backno);
    					$('#backno').parent().addClass('has-error');
    					$('#backno').parent().prepend('<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>'+
							'<span id="inputError2Status" class="sr-only">(error)</span>');
    					}
    				});
    		});
    	});
    });

    $('#backno').on('focus',function(){
    	$('#backno').parent().removeClass('has-error');
    })
    
    /*폼 형식 효과*/
    $(function(){
    	$(".form-control").focus(function(){
    		if($(this).val()!='empty' && $(this).val()!=0){
    			return false;
    		}
    		else{$(this).val('');}
    	}).blur(function(){
    		if($(this).val()== "")
        	{
    			$(this).val("empty")
    		}
    	});
    });
    	

    
    /*선수 입력 형식의 값을 넘기는 코드*/
    $('form:first').on('submit',function(){
    	var data=$('form:first').serialize();
    	$.ajax({
    		type : 'POST',
    		url : '/web/data/insertMarket',
    		contentType :"application/x-www-form-urlencoded;charset=UTF-8",
    		data: data,
    		dataType : 'text',
    		success : function(result) {
    			alert("insert into WishList success");
    		}
    	}).fail(function(jqXHR, textStatus){
    		alert("데이터를 빠짐없이 입력해주세요." + textStatus);
    	});
    	return false;
    });
    /*선수 입력 형식의 값을 넘기는 코드*/
    $('form:eq(1)').on('submit',function(){
    	var data=$('form:eq(1)').serialize();
    	$.ajax({
			type : 'POST',
			url : '/web/data/fpregister',
			contentType :"application/x-www-form-urlencoded;charset=UTF-8",
			data: data,
			dataType : 'text',
		}).done(function(){
    		alert("선수 등록이 성공적으로 완료되었습니다.");
    	}).fail(function( jqXHR, textStatus ) {
    		  alert( "데이터를 빠짐없이 입력해주세요.");
    	}); ; 
    	return false;
    });
    
    $('form:eq(2)').on('submit',function(){
    	var data=$('form:eq(2)').serialize();
    	$.ajax({
    		type : 'POST',
    		url : '/web/data/staffRegister',
    		contentType :"application/x-www-form-urlencoded;charset=UTF-8",
    		data: data,
    		dataType : 'text',
    	}).done(function(){
    		alert("스텝 등록이 성공적으로 완료되었습니다.");
    	}).fail(function( jqXHR, textStatus) {
    		  alert( "데이터를 빠짐없이 입력해주세요.");
    	}); 
    	return false;
    });
    
    $('form:eq(3)').on('submit',function(){
    	var data=$('form:eq(3)').serialize();
    	$.ajax({
    		type : 'POST',
    		url : '/web/data/ItemRegist',
    		contentType :"application/x-www-form-urlencoded;charset=UTF-8",
    		data: data,
    		dataType : 'text',
    	}).done(function(result){
    		alert(result);
    	}).fail(function( jqXHR, textStatus ) {
    		  alert("데이터를 빠짐없이 입력해주세요.");
    	});
    	return false;
    });
	
    
	