.class public Lcom/youku/service/push/service/DeletePushService;
.super Landroid/app/IntentService;
.source "DeletePushService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YKPush.DeletePushService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "YKPush.DeletePushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "msg":Lcom/youku/service/push/PushMsg;
    :try_start_0
    const-string/jumbo v2, "PushMsg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/youku/service/push/PushMsg;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_1
    return-void

    .line 49
    :cond_1
    iget-object v2, v1, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, v1, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-static {v2}, Lc8/cin;->postCancelFeedback(Ljava/lang/String;)V

    .line 51
    iget-object v2, v1, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-static {v2}, Lc8/cin;->sendPushCancelUTFeedback(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/youku/service/push/service/DeletePushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/service/push/PushMsg;->agooID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lc8/qXe;->dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
