.class public Lc8/vF;
.super Lc8/RD;
.source "WVUIToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIToast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 35
    const-string/jumbo v0, "toast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p3, p2}, Lc8/vF;->toast(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toast(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lc8/vF;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/zF;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 49
    .local v3, "result":Lc8/kE;
    const-string/jumbo v5, "msg"

    const-string/jumbo v6, "no permission"

    invoke-virtual {v3, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v3    # "result":Lc8/kE;
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    const-string/jumbo v2, ""

    .line 54
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 55
    .local v0, "duration":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 57
    :try_start_2
    const-string/jumbo v5, "utf-8"

    invoke-static {p2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "message"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string/jumbo v5, "duration"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 67
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 68
    const/4 v5, 0x3

    if-le v0, v5, :cond_2

    .line 69
    const/4 v0, 0x1

    .line 71
    :cond_2
    iget-object v5, p0, Lc8/vF;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 72
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 73
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 75
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "duration":I
    .end local v2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 62
    .restart local v0    # "duration":I
    .restart local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v5

    :try_start_4
    iget-object v5, p0, Lc8/vF;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, p2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 63
    .restart local v4    # "toast":Landroid/widget/Toast;
    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 64
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
