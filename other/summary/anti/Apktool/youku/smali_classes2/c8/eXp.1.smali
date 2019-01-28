.class public Lc8/eXp;
.super Lc8/zGd;
.source "MeizuPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MeizuPushReceiver"

.field private static final TOKEN:Ljava/lang/String; = "MZ_TOKEN"


# instance fields
.field private agooFactory:Lc8/QWp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/zGd;-><init>()V

    return-void
.end method

.method private static reportToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 107
    new-instance v0, Lc8/UWp;

    invoke-direct {v0}, Lc8/UWp;-><init>()V

    .line 108
    .local v0, "notifyManager":Lc8/UWp;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 109
    const-string/jumbo v1, "MZ_TOKEN"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .end local v0    # "notifyManager":Lc8/UWp;
    :cond_0
    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const-string/jumbo v3, "MeizuPushReceiver"

    const-string/jumbo v4, "onMessage"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v6, "intent"

    aput-object v6, v5, v2

    const/4 v6, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    if-nez p2, :cond_1

    .line 103
    :goto_1
    return-void

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_1
    :try_start_0
    const-string/jumbo v2, "content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPushMsg flyme3.0 content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    new-instance v2, Lc8/QWp;

    invoke-direct {v2}, Lc8/QWp;-><init>()V

    iput-object v2, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    .line 96
    iget-object v2, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 97
    iget-object v2, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string/jumbo v4, "meizu"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lc8/QWp;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "MeizuPushReceiver"

    const-string/jumbo v3, "onPushMsg error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "platformExtra"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v1, "MeizuPushReceiver"

    const-string/jumbo v2, "onMessage"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "msg"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "platformExtra"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPushMsg content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    new-instance v1, Lc8/QWp;

    invoke-direct {v1}, Lc8/QWp;-><init>()V

    iput-object v1, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    .line 76
    iget-object v1, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 77
    iget-object v1, p0, Lc8/eXp;->agooFactory:Lc8/QWp;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, "meizu"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lc8/QWp;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "MeizuPushReceiver"

    const-string/jumbo v2, "onPushMsg error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushSwitchStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .prologue
    .line 42
    const-string/jumbo v1, "MeizuPushReceiver"

    const-string/jumbo v2, "onPushStatus"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushId"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v0, "MeizuPushReceiver"

    const-string/jumbo v1, "onRegister"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "pushId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registerStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_0
    const-string/jumbo v1, "MeizuPushReceiver"

    const-string/jumbo v2, "onRegisterStatus"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "status"

    aput-object v0, v3, v4

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_1
    return-void

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    const-string/jumbo v0, "MeizuPushReceiver"

    const-string/jumbo v1, "onRegister"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/eXp;->reportToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subAliasStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .prologue
    .line 68
    return-void
.end method

.method public onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subTagsStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .prologue
    .line 63
    return-void
.end method

.method public onUnRegister(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z

    .prologue
    .line 37
    const-string/jumbo v0, "MeizuPushReceiver"

    const-string/jumbo v1, "onUnRegister"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "result"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unRegisterStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .prologue
    .line 57
    const-string/jumbo v1, "MeizuPushReceiver"

    const-string/jumbo v2, "onUnRegisterStatus"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
