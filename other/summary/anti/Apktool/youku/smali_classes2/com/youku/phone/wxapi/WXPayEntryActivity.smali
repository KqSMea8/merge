.class public Lcom/youku/phone/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lc8/Pjg;


# static fields
.field public static MANAGER_TYPE:I = 0x0

.field public static final MANAGER_TYPE_PAY:I = 0x0

.field public static final MANAGER_TYPE_ZPD_PAY:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIWXAPI:Lc8/Ojg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/youku/phone/wxapi/WXPayEntryActivity;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->mIWXAPI:Lc8/Ojg;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string/jumbo v0, "wxa77232e51741dee3"

    invoke-static {p0, v0}, Lc8/Sjg;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lc8/Ojg;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->mIWXAPI:Lc8/Ojg;

    .line 32
    iget-object v0, p0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->mIWXAPI:Lc8/Ojg;

    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lc8/Ojg;->handleIntent(Landroid/content/Intent;Lc8/Pjg;)Z

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/youku/phone/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v0, p1, p0}, Lc8/Ojg;->handleIntent(Landroid/content/Intent;Lc8/Pjg;)Z

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    return-void
.end method

.method public onReq(Lc8/Cig;)V
    .locals 3
    .param p1, "req"    # Lc8/Cig;

    .prologue
    .line 56
    sget-object v0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReq().type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onResp(Lc8/Eig;)V
    .locals 4
    .param p1, "resp"    # Lc8/Eig;

    .prologue
    .line 61
    sget-object v1, Lcom/youku/phone/wxapi/WXPayEntryActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResp().type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/Eig;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lc8/Eig;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",errStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/Eig;->errStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/youku/phone/wxapi/WXPayEntryActivity;->finish()V

    .line 63
    invoke-virtual {p1}, Lc8/Eig;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 64
    sget v1, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 65
    invoke-static {}, Lc8/oKj;->getInstance()Lc8/oKj;

    move-result-object v1

    iget v2, p1, Lc8/Eig;->errCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/oKj;->performWXAppPayErrCode(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v1

    iget-boolean v1, v1, Lc8/jKj;->isWXAppPayForGame:Z

    if-eqz v1, :cond_2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.youku.phone.action.game.wxpay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "errCode"

    iget v2, p1, Lc8/Eig;->errCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "errStr"

    iget-object v2, p1, Lc8/Eig;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "isRecharge"

    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v2

    iget-boolean v2, v2, Lc8/jKj;->isRecharge:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "appid"

    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v2

    iget-object v2, v2, Lc8/jKj;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "extra"

    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v2

    iget-object v2, v2, Lc8/jKj;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/youku/phone/wxapi/WXPayEntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v1

    invoke-virtual {v1}, Lc8/jKj;->clear()V

    goto :goto_0

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v1

    iget v2, p1, Lc8/Eig;->errCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/jKj;->performWXAppPayErrCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    return-void
.end method
