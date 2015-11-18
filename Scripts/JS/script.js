

//Attendre que le DOM soit prét
$(document).ready(function()
{
	var antiSpam = true;
	var timerSpam;
	var Timer;
	var TimeRefresh = 1500;
	
	$('#btnReset').hide();
	
	$("textarea").sceditor({
		plugins: "bbcode",
		locale:"fr",
		style: "Lib/sceditor/minified/jquery.sceditor.default.min.css",
		height:"50px",
		width:"77%",
		autoUpdate:"true",
		emoticonsEnabled:"true",
		emoticonsCompat: "true",
		autofocus: "true",
		enablePasteFiltering:"true"
	});
	
	
	$('#from_chat').submit(function(event)
	{
		event.preventDefault();
		
		timerSpam = setTimeout(function()
		{
			antiSpam = true;
		},TimeRefresh);
		
		if(antiSpam)
		{
			$.ajax
			(
				{
					url:"Scripts/PHP/InsertChat.php",
					data:$('#from_chat').serialize(),
					method:"POST",
					success: function()
					{
						$('[name=CHAT_MESSAGE]').val('');
						$('#btnReset').click();
						$('[name=CHAT_MESSAGE]').focus();
						antiSpam = false;
					}
				}
			)
		}
	});
	
	
	$('#from_chat').keypress(function(event)
	{
		//A l'appuis sur entré
		if(event.keyCode == 13)
		{
			$(this).submit();
		}
	});
	
	
	
	
	function Refresh()
	{
		var DataServer = "";
		$.ajax
		(
			{
				url:"Scripts/PHP/GetChat.php",
				data:{chat_id:$('.chat_user > [name=chat_id]').val()},
				method:"POST",
				success: function(Data)
				{
					for(var i = 0; i < Data.length; i++)
					{
						if((Data[i]['USER_NAME'] != ""))
						{
							if((Data[i]['CHAT_MESSAGE'] != ""))
							{
								var timestamp = parseInt(Data[i]['CHAT_TIMESTAMP']);
								var now = new Date(timestamp * 1000);
								var nowTimeStamp = new Date();
								
								
								var annee   = now.getFullYear();
								var mois    = ('0'+now.getMonth()+1).slice(-2);
								var jour    = ('0'+now.getDate()   ).slice(-2);
								var heure   = ('0'+now.getHours()  ).slice(-2);
								var minute  = ('0'+now.getMinutes()).slice(-2);
								var seconde = ('0'+now.getSeconds()).slice(-2);
								
								var html =  $("textarea").sceditor('instance').fromBBCode("[size=4]" + Data[i]['CHAT_MESSAGE'] + "[/size]");
								$('#Chat').removeClass('error');
								DataServer += "<span class='chat_block'><p class='chat_user'><input name='chat_id' type='hidden' value='"+Data[i]['CHAT_ID']+"'><img class='chat_avatar' src='Images/Avatar/"+Data[i]['USER_AVATAR']+"' title='"+Data[i]['USER_NAME']+ " "+ Data[i]['USER_FIRSTNAME']+"'>@"+Data[i]['USER_PSEUDO'] + " " +Data[i]['USER_NAME']+ " "+ Data[i]['USER_FIRSTNAME']+" : </p><p class='chat_message'>\t"+ html +"</p><p class='chat_time'>"+ now.toLocaleDateString() + " " + heure + "h:" + minute + "m:" + seconde + "s</p></span>";
								
							}
						}
					}
					//$('#chat').fromBBCode(DataServer);
					
					$('#chat').prepend(DataServer);
				},
				error: function()
				{
					$('#Chat').addClass('error').html('Houston, nous avons un problème !');
				},
				complete: function()
				{
					
					
				},
				dataType:"JSON"
			}
		)
		
		$.ajax
		(
			{
				url:"Scripts/PHP/Show_User.php",
				dataType:"JSON",
				success: function(Data)
				{
					var Dataserver = "<ul>";
					for(var i = 0; i < Data.length; i++)
					{
						Dataserver += "<li><img src='Images/Avatar/"+Data[i]['USER_AVATAR']+"' title='"+Data[i]['USER_NAME']+ " "+ Data[i]['USER_FIRSTNAME']+"'></li>";
					}
					Dataserver += "</ul>";
					$('.user_co').html(Dataserver);
					
				},
				error: function() 
				{
					
				},
				complete: function()
				{
					
				}
			}
		)
	}
	
	Timer = setInterval(function()
	{
		Refresh();
	}, TimeRefresh);
	
	
	Refresh();
	
});

