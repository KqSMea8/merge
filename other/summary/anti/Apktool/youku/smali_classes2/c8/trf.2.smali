.class public Lc8/trf;
.super Landroid/os/Handler;
.source "ANetBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vrf;


# direct methods
.method constructor <init>(Lc8/vrf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 90
    iput-object p1, p0, Lc8/trf;->this$0:Lc8/vrf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 97
    .local v2, "result":Lc8/kE;
    const-string/jumbo v4, "status_code"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, "httpStatusCode":I
    const-string/jumbo v4, "status_code"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "status":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 105
    const-string/jumbo v4, "ret"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v6, "HY_FAILED"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 106
    iget-object v4, p0, Lc8/trf;->this$0:Lc8/vrf;

    invoke-static {v4}, Lc8/vrf;->access$100(Lc8/vrf;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 108
    const-string/jumbo v4, "ret"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v6, "HY_SUCCESS"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 109
    const-string/jumbo v4, "content"

    const-string/jumbo v5, "content"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lc8/trf;->this$0:Lc8/vrf;

    invoke-static {v4}, Lc8/vrf;->access$100(Lc8/vrf;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method
