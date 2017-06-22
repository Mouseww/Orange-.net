<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="product_list1.aspx.cs" Inherits="HTguanli_product_list1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script src="js/jquery.js"></script>
    
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/dropzone.min.js"></script>
<link href="css/dropzone.css" rel="stylesheet" />
 



<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content" id="fuelux-wizard" >
      <div class="page_title" >
       <h2 class="fl">商品添加</h2>
       <a class="fr top_rt_btn">返回产品列表</a>
      </div>
  
      <ul class="" style="height:100%">
          
          <li>
        <br />
          </li>
          
       <li>
           
        <span class="item_name" style="width:120px;">商品名称：</span>
           <input type="text" id="inputInfo0"  class="textbox" placeholder="商品名称..." runat="server"/>
        <%--<asp:TextBox  ID="inputInfo0" class="textbox " placeholder="商品名称..." runat="server" />--%>
         
           <br /><br />
       </li>
          
       <li>
        <span class="item_name" style="width:120px;" >商品货号：</span>
        <asp:TextBox  ID="inputInfo2" class="textbox"  runat="server" placeholder="商品货号..."/>
           <br /><br />
  <span class="item_name" style="width:120px;">商品快照：</span><asp:FileUpload ID="pic_upload" runat="server" /><asp:Label ID="lbl_pic" runat="server" cssclass="pic_text"></asp:Label>
      <input type="button"  id="btn_upload"  onServerClick="btn_upload_Click"  runat="server" value="上传"/>&nbsp;<asp:Image ID="pic" runat="server" style="height:40px; width:40px;"/><div class="pic_image"> </div><br />  
           <br />
       </li>     
          <li>
                                            <div class="col-xs-12 col-sm-5">
                                                
                                                 <span class="item_name" style="width:120px;">商品分类：</span>
                                                 <select id="type1" >
                                                       <%foreach (var types in ComType)
                                                            {
                                                            %>
                                                            <option value="<%=types.ID%>"><%=types.Type_Name%></option>
                                                      <%}%>
                                                      <%-- <option >蛋糕/甜品</option>--%>
                                                    </select>
                                                    <select id="type2"  >
                                                        <option>甜品</option>
                                                    </select>
                                                    <select id="type3"  >
                                                        <option>布丁</option>
                                                    </select>
                                              
                                          
                                        </div>
 <br /><br />
        </li>
          <li>
                            <div class="form-horizontal" id="sample-form3">
                                        <div class="form-group has-info">
                                           
                                            <div class="col-xs-12 col-sm-5" >
                                                 <span class="item_name" style="width:120px;">商品规格：</span>
                                                <span class="block input-icon input-icon-right">

                                                    <input type="text" id="option1" name="step3" class="width-80" />


                                                    <select id="type4">
                                                        <option>g</option>
                                                        <option>kg</option>
                                                    </select>
                                                </span>
                                            </div>
                                        </div>
                                </div>
            <br /><br />
                                </li>
                                <li>
                                        <div class="form-group has-info">
                                        
                                            <div class="col-xs-12 col-sm-5">
                                                <span class="block input-icon input-icon-right">
                                                     <span class="item_name" style="width:120px;">商品口味：</span>
                                                    <input type="text" name="step3" id="option2" class="width-100" />



                                                </span>
                                            </div>
                                        </div>
                                      <br /><br />
                                    </li>
          <li>
                                        <div class="form-group has-info">                                   
                                            <div class="col-xs-12 col-sm-5">
                                                <span class="block input-icon input-icon-right">
                                                     <span class="item_name" style="width:120px;">商品单价：</span>
                                                    <input type="text" name="step3" class="width-20"  />
                                                    元
                                                </span>
                                            </div>
                                        </div>   <br /><br />
          </li>
               <li>
                                        <div class="form-group has-info">                        
                                            <div class="col-xs-12 col-sm-5" style="height: 16px">
                                                
                                                 <span class="item_name" style="width:120px;">商品库存：</span>
                                                    <input type="text" name="step3" class="width-20" />
                                               
                                            </div>
                                        </div>
                 </li>

   <br /><br />
                  <li>

                                <input type="hidden" id="hideen1" runat="server"/>
                                            <%--    <asp:Button ID="save" runat="server" Text="添加" />--%>
                                        <button type="button" id="save" onclick="submit_save()" class="link_btn" style="width:91px;" runat="server">

                                            <i class="icon-save bigger-160"></i>

                                                 添加(<span id="jishu">0</span>)

                                            <span class="badge badge-transparent">

                                                <i class="light-red icon-asterisk"></i>

                                            </span>
                                        </button>
                      <br /><br />  
               </li>        
               
        <script>

                           var i = 0;
                           var  option = new Array();
                  
                   
                                   function submit_save() {

                                        i++;
                                        for (var j = 0; j < 4; j++) {
                                            if (j == 0) {
                                                option.push($('input[name="step3"]:eq(' + j + ')').val() + $('#type4').find('option:selected').text().trim());
                                                
                                            }
                                            else{
                                                option.push($('input[name="step3"]:eq(' + j + ')').val());
                                               
                                                
                                            }
                                        }
                                        $("#ContentPlaceHolder1_hideen1").val(option.toString());

                                        $('input[name="step3"]').text("");
                                        $('input[name="step3"]').val();
                       
                                        $('#jishu').text(i);
                                       
                                        return false;

                   }
                                </script>                                        
         
<script src="js/ace-elements.min.js"></script>

          <li>
              
              <input type="button" id="sub"  value="提交" class="link_btn" style="height:38px; width:98px;"/>
             </li>
              
              
               <script>
            
                                            $(function () {
                                                $("#type1").change(function () {
                                                    $.getJSON("SelectType2.ashx", {
                                                        id: $("#type1").val(),
                                                        typename: $("#type1 option:selected").text()
                                                    }, function (data) {
                                                     
                                                        $("#type2").empty();
                                                        $.each(data, function (i, e) {
                                                            $("#type2").append('<option value="' + e.ID + ' "> ' + e.Name + '</option>');
                                                        
                                                        });
                                                        })
                                                    setTimeout('chenges()', 100)
                                                })

                                            })
                                            function chenges() {
                                                $.getJSON("SelectType3.ashx", {
                                                    id2: $("#type2").val(),
                                                    typename2: $("#type2 option:selected").text()
                                                }, function (data) {
                                                    $("#type3").empty();
                                                    $.each(data, function (i, e) {
                                                        $("#type3").append('<option value="' + e.ID + ' "> ' + e.Name + '</option>');
                                                    });
                                                }
                                                   )
                                            }
                                            $(function () {
                                                $("#type2").change(function () {
                                                    $.getJSON("SelectType3.ashx", {
                                                        id2: $("#type2").val(),
                                                        typename2: $("#type2 option:selected").text()
                                                    }, function (data) {
                                                        $("#type3").empty();
                                                        $.each(data, function (i, e) {
                                                            $("#type3").append('<option value="' + e.ID + ' "> ' + e.Name + '</option>');
                                                        });
                                                    }
                                                    )
                                                })
                                            })
</script><script type="text/javascript">

     jQuery(function($) {


         $('#sub').click(function () { 
             $.post('submit.ashx',
                 {
                     "Commodity_name": $('#ContentPlaceHolder1_inputInfo0').val(),
                     "Commodity_typec": $('#type3').find('option:selected').text(),
                     "jianjie": $('#ContentPlaceHolder1_inputInfo2').val(),
                     "option": $("#ContentPlaceHolder1_hideen1").val().toString(),
                    
                 }
                 , function (data) {
                     alert('添加成功');
                     location.href = "product_list1.aspx";
                 });
         })
         
     }
   )
        </script></ul>



             

     </div>
</section>





</asp:Content>

