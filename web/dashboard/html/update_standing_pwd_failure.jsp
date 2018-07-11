

    <jsp:include page="update_standings.jsp"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    <HEAD>
        <TITLE> New Document </TITLE>
        
        
        <script type="text/javascript">
    $(window).on('load',function(){
        $('#frameModalBottom').modal('show');
    });
</script>
    </HEAD>

    <BODY>
       

        <!-- Button trigger modal -->


<!-- Modal -->


<!-- Frame Modal Bottom -->
<div class="modal fade bottomn align-content-center" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog modal-frame modal-bottom" role="document">
                                          
        <div class="modal-content">            
            <div class="modal-body">
                <div align="center" class="animated fadeInLeft">Wrong Password, We Cannot Update Match Data</div><div align="center"><button align="right" type="button" onclick="location.href = 'update_standings.jsp';" class="btn  btn-default  btn-sm animated fadeInRight">Try Again!</button> </div>
            </div>            
        </div>
    </div>
</div>
            


    </BODY>
</HTML>
