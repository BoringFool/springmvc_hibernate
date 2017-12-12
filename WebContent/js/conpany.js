$()
		.ready(function() {
			/*
			 * 点击显示<div。
			 * */
			$("#create").click(function() {
				$(".show").css({"display" : "block"});
					});

			/*
			 * 添加<div展示块
			 * 
			 * */		
		/*	var show ="<div class=\"scd_d\">"+
					"<div class=\"scd_d_i\">"+ 
				    "<div class=\"scd_d\"><div class=\"scd_d_i\"><div class=\"scd_d_md ber_remv\">公司名字</div>" +
					"<div class=\"scd_d_sd ber_remv1\">公司简单介绍。</div>" +
					"<div class=\"scd_d_td ber_remv\"><span class=\"s_s\">在招职位数</span><span class=\"s_s1\">250</span></div>" +
					"<div class=\"scd_d_fd\">wangted offer</div>" +
					"</div>" +
					"<div class=\"scd_d_fid\">是<br/>否<br/>靠<br/>谱<br/>？</div>" +
					"</div>"
			$(document).ready(function() {
				$("#main").append(show);
					});*/

			/*
			 * 限制input和textare文本字数,想要封装下面的功能失败，暂时不知道原因
			 *	(function limt(num){ 													 
			 *			var $this = $(this),											
			 *			_val = $this.val();											
    		 *			if (_val.length > num) {  											  
			 *			$this.val(_val.substring(0, num));										
			 *   })
			 * */
			 $("#area").on("input propertychange", function() {  
			        var $this = $(this), 
			            _val = $this.val();
			        if (_val.length > 88) {  
			            $this.val(_val.substring(0, 88));  
			        }    
			    });  
			
			 $("#z").on("input propertychange", function() {  
			        var $this = $(this), 
			            _val = $this.val();
			        if (_val.length > 6) {  
			            $this.val(_val.substring(0, 6));  
			        }    
			    });
			 
			 $("#w").on("input propertychange", function() {  
			        var $this = $(this), 
			            _val = $this.val();
			        if (_val.length > 18) {  
			            $this.val(_val.substring(0, 18));  
			        }    
			    });
			 
			  $("#t").on("input propertychange", function() {  
				  	var $this = $(this), 
				  		_val = $this.val();
				  	if (_val.length > 18) {  
				  		$this.val(_val.substring(0, 18));  
				  	} 
		        }); 
			 
			
			
			/**/
			

			/**/
			  a();
			  a();
			  a();
			  a();
			  a();
			  a();
			  a();
			  a();
			  a();
			/**/
			/**/
			/**/
			
			 
			 /*
			 * 测试jq是否有效
			 * */
			/*$(document).ready(function() {
			$("input").click(function() {
				$(this).hide();
			}); 
			});
			
			$(".b").click(function() {
			$(this).text(a);
			});
		 	
		 	$("#a").click(function(){
			$(this).hide();
			}); 
		 	
		 	$(".sc_d").click(function(){
			$(this).hide();
			}); */ 	 	
					
					
					
					
				});