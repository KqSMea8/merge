.class public Lc8/KKd;
.super Lc8/IKd;
.source "SubScribeTagStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/IKd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECK_SUB_TAGS:I = 0x3

.field public static final SUB_TAGS:I = 0x0

.field public static final UNSUB_ALL_TAGS:I = 0x2

.field public static final UNSUB_TAGS:I = 0x1


# instance fields
.field private pushId:Ljava/lang/String;

.field private subTagType:I

.field private tags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/KKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "enableRPC"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lc8/KKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 44
    iput-boolean p4, p0, Lc8/KKd;->enableRPC:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "pushAPI"    # Lc8/CKd;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lc8/IKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lc8/KKd;->subTagType:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "pushAPI"    # Lc8/CKd;
    .param p6, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc8/KKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 35
    iput-object p4, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lc8/KKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;-><init>()V

    .line 67
    .local v0, "subTagsStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setCode(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lc8/KKd;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string/jumbo v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setMessage(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    iget-object v1, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string/jumbo v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "pushId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lc8/KKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/KKd;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lc8/KKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .locals 8

    .prologue
    .line 93
    new-instance v2, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;-><init>()V

    .line 94
    .local v2, "subTagsStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    const/4 v0, 0x0

    .line 95
    .local v0, "anResponse":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    iget v3, p0, Lc8/KKd;->subTagType:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_0
    invoke-virtual {v0}, Lc8/WHd;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v2, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .end local v2    # "subTagsStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    invoke-virtual {v0}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2    # "subTagsStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    const-string/jumbo v3, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network subTagsStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1
    return-object v2

    .line 97
    :pswitch_0
    iget-object v3, p0, Lc8/KKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/KKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    iget-object v7, p0, Lc8/KKd;->tags:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lc8/CKd;->subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v3, p0, Lc8/KKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/KKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    iget-object v7, p0, Lc8/KKd;->tags:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lc8/CKd;->unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v3, p0, Lc8/KKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/KKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lc8/CKd;->unSubAllScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v3, p0, Lc8/KKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/KKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lc8/CKd;->checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    .line 114
    .local v1, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    const-string/jumbo v3, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setCode(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setMessage(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v3, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subTagsStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-virtual {p0, p1}, Lc8/KKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .prologue
    .line 131
    iget-object v1, p0, Lc8/KKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/KKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/KKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/zKd;->sendSubTags(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    .line 132
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lc8/KKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lc8/KKd;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "app_key"

    iget-object v2, p0, Lc8/KKd;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "strategy_package_name"

    iget-object v2, p0, Lc8/KKd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "push_id"

    iget-object v2, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "strategy_type"

    invoke-virtual {p0}, Lc8/KKd;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "strategy_child_type"

    iget v2, p0, Lc8/KKd;->subTagType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "strategy_params"

    iget-object v2, p0, Lc8/KKd;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/KKd;->pushId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSubTagType(I)V
    .locals 0
    .param p1, "subTagType"    # I

    .prologue
    .line 48
    iput p1, p0, Lc8/KKd;->subTagType:I

    .line 49
    return-void
.end method

.method public setSubTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/KKd;->tags:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x4

    return v0
.end method
