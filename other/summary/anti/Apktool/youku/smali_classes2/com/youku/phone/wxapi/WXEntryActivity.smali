.class public Lcom/youku/phone/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lc8/Pjg;


# static fields
.field public static final ACTION_ON_RESPONSE:Ljava/lang/String; = "youku.intent.action.WX_CALLBACK_ON_RESP"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWeixinApi:Lc8/Ojg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string/jumbo v0, "WXEntryActivity"

    iput-object v0, p0, Lcom/youku/phone/wxapi/WXEntryActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string/jumbo v0, "wxa77232e51741dee3"

    invoke-static {p0, v0}, Lc8/Sjg;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lc8/Ojg;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/wxapi/WXEntryActivity;->mWeixinApi:Lc8/Ojg;

    .line 41
    iget-object v0, p0, Lcom/youku/phone/wxapi/WXEntryActivity;->mWeixinApi:Lc8/Ojg;

    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lc8/Ojg;->handleIntent(Landroid/content/Intent;Lc8/Pjg;)Z

    .line 42
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/youku/phone/wxapi/WXEntryActivity;->mWeixinApi:Lc8/Ojg;

    invoke-interface {v0, p1, p0}, Lc8/Ojg;->handleIntent(Landroid/content/Intent;Lc8/Pjg;)Z

    .line 53
    return-void
.end method

.method public onReq(Lc8/Cig;)V
    .locals 0
    .param p1, "baseReq"    # Lc8/Cig;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXEntryActivity;->finish()V

    .line 47
    return-void
.end method

.method public onResp(Lc8/Eig;)V
    .locals 4
    .param p1, "baseResp"    # Lc8/Eig;

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " baseResp : errStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/Eig;->errStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lc8/Eig;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    iget v2, p1, Lc8/Eig;->errCode:I

    packed-switch v2, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v2, "youku.intent.action.WX_CALLBACK_ON_RESP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v2, "errorCode"

    iget v3, p1, Lc8/Eig;->errCode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/youku/phone/wxapi/WXEntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXEntryActivity;->finish()V

    .line 83
    return-void

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    instance-of v2, p1, Lc8/mjg;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 61
    check-cast v1, Lc8/mjg;

    .line 62
    .local v1, "sendAuthResp":Lc8/mjg;
    iget-object v2, v1, Lc8/mjg;->code:Ljava/lang/String;

    invoke-static {v2}, Lc8/Gko;->handleMMAuth(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1    # "sendAuthResp":Lc8/mjg;
    :pswitch_2
    invoke-static {}, Lc8/Gko;->handleMMAuthFail()V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-static {}, Lc8/Gko;->handleMMAuthFail()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
