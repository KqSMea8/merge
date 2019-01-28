.class public Lc8/QSh;
.super Ljava/lang/Object;
.source "TaobaoYoukuAccountJSBridge.java"

# interfaces
.implements Lc8/Mko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SSh;->queryBindingStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Mko",
        "<",
        "Lc8/Sko;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SSh;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/SSh;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "this$0"    # Lc8/SSh;

    .prologue
    .line 43
    iput-object p1, p0, Lc8/QSh;->this$0:Lc8/SSh;

    iput-object p2, p0, Lc8/QSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lc8/Oko;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lc8/Sko;

    invoke-virtual {p0, p1}, Lc8/QSh;->onFailure(Lc8/Sko;)V

    return-void
.end method

.method public onFailure(Lc8/Sko;)V
    .locals 3
    .param p1, "taobaoBindInfo"    # Lc8/Sko;

    .prologue
    .line 73
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 74
    .local v0, "result":Lc8/kE;
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Lc8/Sko;->getResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string/jumbo v1, "error"

    invoke-virtual {p1}, Lc8/Sko;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lc8/QSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onSuccess(Lc8/Oko;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lc8/Sko;

    invoke-virtual {p0, p1}, Lc8/QSh;->onSuccess(Lc8/Sko;)V

    return-void
.end method

.method public onSuccess(Lc8/Sko;)V
    .locals 8
    .param p1, "taobaoBindInfo"    # Lc8/Sko;

    .prologue
    .line 46
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 48
    .local v3, "result":Lc8/kE;
    :try_start_0
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "success"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "bound"

    iget-boolean v5, p1, Lc8/Sko;->mBinded:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    iget-object v4, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    if-eqz v4, :cond_0

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v2, "info":Lorg/json/JSONObject;
    const-string/jumbo v4, "create_time"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-wide v6, v5, Lc8/Qko;->mCreateTime:J

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v4, "portrait"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-object v5, v5, Lc8/Qko;->mPortrait:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v4, "share_set"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget v5, v5, Lc8/Qko;->mShareSet:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v4, "tl_site"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-object v5, v5, Lc8/Qko;->mTlsite:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v4, "ytid"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-object v5, v5, Lc8/Qko;->mYtid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v4, "tuid"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-object v5, v5, Lc8/Qko;->mTuid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v4, "nickname"

    iget-object v5, p1, Lc8/Sko;->mBindInfo:Lc8/Qko;

    iget-object v5, v5, Lc8/Qko;->mNickName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v4, "info"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .end local v2    # "info":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v0}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 63
    iget-object v4, p0, Lc8/QSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "error"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v4, "error"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lc8/QSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method
