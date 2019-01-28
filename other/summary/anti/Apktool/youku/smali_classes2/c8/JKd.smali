.class public Lc8/JKd;
.super Lc8/IKd;
.source "SubScribeAliasStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/IKd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECK_ALIAS:I = 0x2

.field public static final SUB_ALIAS:I = 0x0

.field public static final UNSUB_ALIAS:I = 0x1


# instance fields
.field private alias:Ljava/lang/String;

.field private aliasStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private pushId:Ljava/lang/String;

.field private subAliasType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/JKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "enableRPC"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lc8/JKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 45
    iput-boolean p4, p0, Lc8/JKd;->enableRPC:Z

    .line 46
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
    .line 31
    invoke-direct/range {p0 .. p5}, Lc8/IKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/JKd;->aliasStatusMap:Ljava/util/Map;

    .line 32
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
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc8/JKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 36
    iput-object p4, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private changeSyncAliasStatus(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lc8/JKd;->aliasStatusMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/JKd;->subAliasType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method private isCacheAlias()Z
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lc8/JKd;->isSupportRemoteInvoke:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.meizu.cloud"

    iget-object v1, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSyncAliasStatus()Z
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lc8/JKd;->aliasStatusMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/JKd;->subAliasType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 192
    .local v0, "aliasStatus":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private localAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lc8/JKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lc8/ELd;->getAlias(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/JKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private storeAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lc8/JKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/ELd;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lc8/JKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lc8/JKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;-><init>()V

    .line 68
    .local v0, "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lc8/JKd;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string/jumbo v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lc8/JKd;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string/jumbo v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string/jumbo v1, "pushId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lc8/JKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    iget v1, p0, Lc8/JKd;->subAliasType:I

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .end local v0    # "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;-><init>()V

    .line 159
    .restart local v0    # "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    const-string/jumbo v1, "200"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setPushId(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lc8/JKd;->localAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setAlias(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "check alias success"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/JKd;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JKd;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JKd;->pushId:Ljava/lang/String;

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
    .line 21
    invoke-virtual {p0}, Lc8/JKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 98
    new-instance v2, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;-><init>()V

    .line 99
    .local v2, "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    iget-object v3, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setPushId(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "anResponse":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    iget v3, p0, Lc8/JKd;->subAliasType:I

    packed-switch v3, :pswitch_data_0

    .line 132
    :goto_0
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lc8/WHd;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    new-instance v2, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .end local v2    # "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    invoke-virtual {v0}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v2    # "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    const-string/jumbo v3, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network subAliasStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v3, "200"

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lc8/JKd;->changeSyncAliasStatus(Z)V

    .line 150
    :cond_0
    :goto_1
    return-object v2

    .line 104
    :pswitch_0
    iget-object v3, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-direct {p0}, Lc8/JKd;->localAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lc8/JKd;->isSyncAliasStatus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    const-string/jumbo v3, "200"

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setAlias(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, v5}, Lc8/JKd;->changeSyncAliasStatus(Z)V

    .line 109
    invoke-direct {p0}, Lc8/JKd;->isCacheAlias()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/JKd;->storeAlias(Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v3, p0, Lc8/JKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/JKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/JKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    iget-object v7, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lc8/CKd;->subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lc8/JKd;->localAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lc8/JKd;->isSyncAliasStatus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    const-string/jumbo v3, "200"

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    invoke-direct {p0, v5}, Lc8/JKd;->changeSyncAliasStatus(Z)V

    .line 121
    invoke-direct {p0}, Lc8/JKd;->isCacheAlias()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lc8/JKd;->storeAlias(Ljava/lang/String;)V

    .line 124
    :cond_4
    iget-object v3, p0, Lc8/JKd;->pushAPI:Lc8/CKd;

    iget-object v4, p0, Lc8/JKd;->appId:Ljava/lang/String;

    iget-object v5, p0, Lc8/JKd;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    iget-object v7, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lc8/CKd;->unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 126
    goto/16 :goto_0

    .line 128
    :pswitch_2
    invoke-direct {p0}, Lc8/JKd;->localAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setAlias(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v3, "200"

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_5
    invoke-virtual {v0}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    .line 141
    .local v1, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 142
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

    .line 144
    :cond_6
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setCode(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->setMessage(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v3, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subAliasStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    invoke-virtual {p0, p1}, Lc8/JKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .prologue
    .line 170
    iget-object v1, p0, Lc8/JKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/zKd;->sendSubAlias(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    .line 171
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lc8/JKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lc8/JKd;->subAliasType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lc8/JKd;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "app_key"

    iget-object v2, p0, Lc8/JKd;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "strategy_package_name"

    iget-object v2, p0, Lc8/JKd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "push_id"

    iget-object v2, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "strategy_type"

    invoke-virtual {p0}, Lc8/JKd;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "strategy_child_type"

    iget v2, p0, Lc8/JKd;->subAliasType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "strategy_params"

    iget-object v2, p0, Lc8/JKd;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_0
    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/JKd;->alias:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/JKd;->pushId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSubAliasType(I)V
    .locals 0
    .param p1, "subAliasType"    # I

    .prologue
    .line 49
    iput p1, p0, Lc8/JKd;->subAliasType:I

    .line 50
    return-void
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x8

    return v0
.end method
