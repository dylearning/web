<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><div id="divCommentPost">
    <div id="reed-pinglun-zhuti">
    <form id="frmSumbit" target="_self" method="post" action="{$article.CommentPostUrl}" >
	<input type="hidden" name="inpId" id="inpId" value="{$article.ID}" />
	<input type="hidden" name="inpRevID" id="inpRevID" value="0" />
        <div id="zuozhe_xinxi">
        	<div class="yonghu-xinxi">
            	<ul>
                <p>{if $user.ID>0}{$user.StaticName}&nbsp;发表评论：{/if}<a rel="nofollow" id="cancel-reply" href="#divCommentPost" style="display:none;">取消</a></p>
                    {if $user.ID>0}
                    <input type="hidden" name="inpName" id="inpName" value="{$user.Name}" />
                    <input type="hidden" name="inpEmail" id="inpEmail" value="{$user.Email}" />
                    <input type="hidden" name="inpHomePage" id="inpHomePage" value="{$user.HomePage}" />
                    {else}
                    <p><input type="text" name="inpName" id="inpName" class="input_out" value="{$user.Name}" size="35" tabindex="1" /> <label for="inpName">&nbsp;昵称（必填）</label></p>
                    <p><input type="text" name="inpEmail" id="inpEmail" class="input_out" value="{$user.Email}" size="35" tabindex="2" /> <label for="inpEmail">&nbsp;邮箱（选填）</label></p>
                    <p><input type="text" name="inpHomePage" id="inpHomePage" class="input_out" value="{$user.HomePage}" size="35" tabindex="3" /> <label for="inpHomePage">&nbsp;网址（选填）</label></p>
                    <p><input type="checkbox" checked="checked" name="chkRemember" value="1" id="chkRemember" background-color="#e9e9e9" /></p>
                    {if $option['ZC_COMMENT_VERIFY_ENABLE']}
                    <p><input class="input_out" type="text" name="inpVerify" id="inpVerify" value="" size="20" tabindex="4" />&nbsp;&nbsp;<label for="inpVerify">验证（必填）</label>&nbsp;<img style="border: 1px solid black; cursor: pointer;margin-bottom:-10px;" src="{$article.ValidCodeUrl}" class="verifyimg" onclick="javascript:this.src='{$article.ValidCodeUrl}&amp;tm='+Math.random();" height="26" width="70" /></p>
                    {/if}
                    
                    {/if}
                </ul>
        	</div>
        </div>
        <div id="reed-pinglun-wenben">
        	<textarea name="txaArticle" id="txaArticle" rows="8" tabindex="5" ></textarea>
        </div>
        <div id="fucong-biaoge">
        	<span>
        	<input name="Sumbit" type="submit" tabindex="6" value="提交评论" onclick="return VerifyMessage()" class="reed-pinglun-anniu" /> 
            </span>
            ◎欢迎参与讨论，请在这里发表您的看法、交流您的观点。
        </div>
<script language="JavaScript" type="text/javascript">
  var commenttextarea = document.getElementById('txaArticle');
  commenttextarea.onkeydown = function quickSubmit(e) {
  if (!e) var e = window.event;
  if (e.ctrlKey && e.keyCode == 13){
    return VerifyMessage();
  }
  }
</script>
        </form>
    </div>
</div>