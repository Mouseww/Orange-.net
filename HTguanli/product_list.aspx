<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="product_list.aspx.cs" Inherits="HTguanli_upload_product_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">商品添加</h2>
       <a class="fr top_rt_btn">返回产品列表</a>
      </div>
     <section>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">商品名称：</span>
        <input type="text" class="textbox textbox_295" placeholder="商品名称..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">商品货号：</span>
        <input type="text" class="textbox" placeholder="商品货号..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">品牌：</span>
        <select class="select">
         <option>选择品牌</option>
        </select>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">分类：</span>
        <select class="select">
         <option>选择产品分类</option>
        </select>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">推荐：</span>
        <label class="single_selection"><input type="radio" name="name"/>是否精品</label>
        <label class="single_selection"><input type="radio" name="name"/>是否热销</label>
        <label class="single_selection"><input type="radio" name="name"/>是否新品</label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">上传图片：</span>
        <label class="uploadImg">
         <input type="file"/>
         <span>上传图片</span>
        </label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">产品详情：</span>
        <script id="editor" type="text/plain" style="width:1024px;height:500px;margin-left:120px;margin-top:0;"></script>
           <!--ueditor可删除下列信息-->
           <div id="btns" style="margin-left:120px;margin-top:8px;">
            <div>
                <button onclick="getAllHtml()">获得整个html的内容</button>
                <button onclick="getContent()">获得内容</button>
                <button onclick="setContent()">写入内容</button>
                <button onclick="setContent(true)">追加内容</button>
                <button onclick="getContentTxt()">获得纯文本</button>
                <button onclick="getPlainTxt()">获得带格式的纯文本</button>
                <button onclick="hasContent()">判断是否有内容</button>
                <button onclick="setFocus()">使编辑器获得焦点</button>
                <button onmousedown="isFocus(event)">编辑器是否获得焦点</button>
                <button onmousedown="setblur(event)" >编辑器失去焦点</button>
        
            </div>
            <div>
                <button onclick="getText()">获得当前选中的文本</button>
                <button onclick="insertHtml()">插入给定的内容</button>
                <button id="enable" onclick="setEnabled()">可以编辑</button>
                <button onclick="setDisabled()">不可编辑</button>
                <button onclick=" UE.getEditor('editor').setHide()">隐藏编辑器</button>
                <button onclick=" UE.getEditor('editor').setShow()">显示编辑器</button>
                <button onclick=" UE.getEditor('editor').setHeight(300)">设置高度为300默认关闭了自动长高</button>
            </div>
        
            <div>
                <button onclick="getLocalData()" >获取草稿箱内容</button>
                <button onclick="clearLocalData()" >清空草稿箱</button>
            </div>
        
        </div>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn"/>
       </li>
      </ul>
     </section>
 </div>
</section>
<script src="js/ueditor.config.js"></script>
<script src="js/ueditor.all.min.js"> </script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>

</asp:Content>

