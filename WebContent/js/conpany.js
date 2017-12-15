$().ready(function() {
			/*
			 * 点击显示<div和隐藏。
			 * */
			$("#create").click(function() {
				$(".show").css({"display" : "block"});
					});
			
			$("#back").click(function() {
				$(location).attr("href","http://localhost:8080/springmvc_hibernate/jsp/BadConpany.jsp");
					});
			$(".sub").click(function() {
				
				var nu=$("#z").val();
				if((($("#t").val())!=null&&($("#area").val())!=null&&($("#w").val())!=null)&&(($("#t").val())!=""&&($("#area").val())!=""&&($("#w").val())!="")){
					if(isNaN(nu)){
						alert("职位数必须是数字！");
					}else{
						save_conpany();
					}
				}else{
					alert("可填选项不可为空！！！");
				}
				
				
					});
			/*
			 * 添加<div展示块
			 * 
			 * */		
			var name,description,num_jop,offer,ok,bc;
			
			function findAll(){
				$.ajax({
					type:"post",
					url:"/springmvc_hibernate/conpany/findall",
					dataType:"json",
					success:function(data){
						for(var i=0;i<data.length;i++){
							var aaa=data[i];
						    name=aaa.name;
						    description=aaa.description;
						    num_jop=aaa.num_jop;
						    offer=aaa.offer;
							ok=aaa.ok;
							if(ok){
								 bc="#00d900";
							 } else{
								 bc="#ff7979";
							 }
							
							a();
						    	
						};
					},
					error:function(){
						alert("wrong");
					}
				});
			}
			
			function a(){
				
				var show = "<div class=\"scd_d\"><div class=\"scd_d_i\"><div class=\"scd_d_md ber_remv\">"+name+"</div>" +
							"<div class=\"scd_d_sd ber_remv1\">"+description+"</div>" +
							"<div class=\"scd_d_td ber_remv\"><span class=\"s_s\">在招职位数</span><span class=\"s_s1\">"+num_jop+"</span></div>" +
							"<div class=\"scd_d_fd\">"+offer+"</div>" +
							"</div>" +
							"<div class=\"scd_d_fid\" style=\" color: #ffffff; background-color:"+bc+"; \"></div>" +
							"</div>";
				$(document).ready(function() {
					$("#main").append(show);
				});  	
			}

			findAll();
			
			
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
			 
			
			
			/*
			 * 添加展示块,添加成功并跳转会展示页面
			 * */
			  function save_conpany(){	
					var con={
							"name":$("#t").val(),
							"description":$("#area").val(),
							"num_jop":$("#z").val(),
							"offer":$("#w").val(),
							"ok":"true"	
						};
					$.ajax({
							type:"post",
							url:"/springmvc_hibernate/conpany/save",
							contentType : "application/json;charset=utf-8",
							data:JSON.stringify(con),
							success:function(data){
								$(location).attr("href","http://localhost:8080/springmvc_hibernate/jsp/BadConpany.jsp");
							}			
						});	
				}

			/**/
			  
			  
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