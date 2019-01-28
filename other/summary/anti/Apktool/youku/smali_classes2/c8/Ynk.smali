.class public Lc8/Ynk;
.super Ljava/lang/Object;
.source "SubscribUtil.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bok;

.field final synthetic val$callback:Lc8/vin;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bok;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bok;

    .prologue
    .line 173
    iput-object p1, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iput-object p2, p0, Lc8/Ynk;->val$mOfflineSubscribe:Lc8/jzk;

    iput-boolean p3, p0, Lc8/Ynk;->val$isMedia:Z

    iput-boolean p4, p0, Lc8/Ynk;->val$isShowTips:Z

    iput-object p5, p0, Lc8/Ynk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p6, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iput-object p8, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iput-object p9, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lc8/bok;->isCreateOfflineSucess:Z

    .line 227
    iget-boolean v0, p0, Lc8/Ynk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 233
    return-void

    .line 230
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 8
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 177
    :try_start_0
    iget-object v0, p0, Lc8/Ynk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v7

    .line 179
    .local v7, "mOfflinInfo":Lc8/izk;
    if-eqz v7, :cond_6

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "==mofflininfo======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lc8/izk;->codeStr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "====desc==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    iget v0, v7, Lc8/izk;->codeStr:I

    if-ne v0, v2, :cond_2

    .line 184
    const/4 v0, 0x1

    sput-boolean v0, Lc8/bok;->isCreateOfflineSucess:Z

    .line 185
    iget-object v0, p0, Lc8/Ynk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0}, Lc8/jzk;->getOfflineSubscribeList()V

    .line 187
    iget-boolean v0, p0, Lc8/Ynk;->val$isMedia:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Ynk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 188
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lc8/Ynk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/bok;->access$000(Lc8/bok;Ljava/lang/String;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$100(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 195
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-boolean v1, p0, Lc8/Ynk;->val$isMedia:Z

    invoke-static {v0, v1}, Lc8/bok;->access$200(Lc8/bok;Z)V

    .line 222
    .end local v7    # "mOfflinInfo":Lc8/izk;
    :goto_0
    return-void

    .line 199
    .restart local v7    # "mOfflinInfo":Lc8/izk;
    :cond_2
    iget v0, v7, Lc8/izk;->codeStr:I

    const/16 v1, -0x12c

    if-ne v0, v1, :cond_3

    .line 200
    iget-object v0, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 201
    const-class v0, Lc8/fhn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fhn;

    iget-object v1, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, v1, Lc8/bok;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/fhn;->goLogin(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v7    # "mOfflinInfo":Lc8/izk;
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_0

    .line 203
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v7    # "mOfflinInfo":Lc8/izk;
    :cond_3
    :try_start_1
    iget v0, v7, Lc8/izk;->codeStr:I

    const/16 v1, -0x12e

    if-ne v0, v1, :cond_5

    .line 205
    iget-object v0, p0, Lc8/Ynk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/bok;->access$000(Lc8/bok;Ljava/lang/String;)V

    .line 208
    :cond_4
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$100(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_0

    .line 210
    :cond_5
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 211
    iget-object v0, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    iget-object v0, p0, Lc8/Ynk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Ynk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ynk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Ynk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Ynk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Ynk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
