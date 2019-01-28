.class public Lc8/LKd;
.super Lc8/IKd;
.source "SwitchStatusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/IKd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECK_PUSH:I = 0x2

.field public static final SWITCH_ALL:I = 0x3

.field public static final SWITCH_NOTIFICATION:I = 0x0

.field public static final SWITCH_THROUGH_MESSAGE:I = 0x1


# instance fields
.field private pushId:Ljava/lang/String;

.field private pushStatusMap:Ljava/util/Map;
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

.field private switchType:I

.field switcher:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/LKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "enableRPC"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lc8/LKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 48
    iput-boolean p4, p0, Lc8/LKd;->enableRPC:Z

    .line 49
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
    .line 34
    invoke-direct/range {p0 .. p5}, Lc8/IKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/LKd;->switchType:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/LKd;->pushStatusMap:Ljava/util/Map;

    .line 35
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
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc8/LKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 39
    iput-object p4, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private changeSyncPushStatus(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lc8/LKd;->pushStatusMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/LKd;->switchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private isSyncPushStatus()Z
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lc8/LKd;->pushStatusMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/LKd;->switchType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 229
    .local v0, "pushStatus":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notificationSwitch()Z
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lc8/ELd;->getNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private switchAll(Z)V
    .locals 2
    .param p1, "switcher"    # Z

    .prologue
    .line 211
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/ELd;->setNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 212
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v0, p1}, Lc8/ELd;->setThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 213
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private switchNotification(Z)V
    .locals 2
    .param p1, "switcher"    # Z

    .prologue
    .line 203
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/ELd;->setNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 204
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private switchThroughMessage(Z)V
    .locals 2
    .param p1, "switcher"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/ELd;->setThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private throughMessageSwitch()Z
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lc8/ELd;->getThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lc8/LKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    .line 71
    .local v0, "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lc8/LKd;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string/jumbo v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v1, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string/jumbo v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v1, "pushId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lc8/LKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    iget v1, p0, Lc8/LKd;->switchType:I

    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .end local v0    # "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    .line 173
    .restart local v0    # "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    iget-object v1, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setPushId(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "200"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lc8/LKd;->notificationSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 177
    invoke-direct {p0}, Lc8/LKd;->throughMessageSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v1}, Lc8/LKd;->switchAll(Z)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v1}, Lc8/LKd;->switchNotification(Z)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v1}, Lc8/LKd;->switchThroughMessage(Z)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/LKd;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->pushId:Ljava/lang/String;

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
    .line 23
    invoke-virtual {p0}, Lc8/LKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 103
    new-instance v8, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v8}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    .line 104
    .local v8, "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    iget-object v0, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setPushId(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "200"

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "anResponse":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    iget v0, p0, Lc8/LKd;->switchType:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v6}, Lc8/WHd;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    new-instance v8, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .end local v8    # "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    invoke-virtual {v6}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v8    # "pushSwitchStatus":Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    const-string/jumbo v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network pushSwitchStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "200"

    invoke-virtual {v8}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/LKd;->changeSyncPushStatus(Z)V

    .line 164
    :cond_0
    :goto_1
    return-object v8

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lc8/LKd;->notificationSwitch()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 111
    invoke-direct {p0}, Lc8/LKd;->throughMessageSwitch()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lc8/LKd;->notificationSwitch()Z

    move-result v0

    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lc8/LKd;->throughMessageSwitch()Z

    move-result v0

    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lc8/LKd;->isSyncPushStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 117
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, v2}, Lc8/LKd;->changeSyncPushStatus(Z)V

    .line 120
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v0}, Lc8/LKd;->switchAll(Z)V

    .line 121
    iget-object v0, p0, Lc8/LKd;->pushAPI:Lc8/CKd;

    iget-object v1, p0, Lc8/LKd;->appId:Ljava/lang/String;

    iget-object v2, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    iget-boolean v4, p0, Lc8/LKd;->switcher:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/CKd;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lc8/WHd;

    move-result-object v6

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_2
    invoke-direct {p0}, Lc8/LKd;->notificationSwitch()Z

    move-result v0

    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lc8/LKd;->isSyncPushStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 127
    invoke-direct {p0}, Lc8/LKd;->throughMessageSwitch()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 129
    :cond_2
    invoke-direct {p0, v2}, Lc8/LKd;->changeSyncPushStatus(Z)V

    .line 130
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v0}, Lc8/LKd;->switchNotification(Z)V

    .line 131
    iget-object v0, p0, Lc8/LKd;->pushAPI:Lc8/CKd;

    iget-object v1, p0, Lc8/LKd;->appId:Ljava/lang/String;

    iget-object v2, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    iget v4, p0, Lc8/LKd;->switchType:I

    iget-boolean v5, p0, Lc8/LKd;->switcher:Z

    invoke-virtual/range {v0 .. v5}, Lc8/CKd;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lc8/WHd;

    move-result-object v6

    .line 133
    goto/16 :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0}, Lc8/LKd;->throughMessageSwitch()Z

    move-result v0

    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lc8/LKd;->isSyncPushStatus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    invoke-direct {p0}, Lc8/LKd;->notificationSwitch()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 137
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 139
    :cond_3
    invoke-direct {p0, v2}, Lc8/LKd;->changeSyncPushStatus(Z)V

    .line 140
    iget-boolean v0, p0, Lc8/LKd;->switcher:Z

    invoke-direct {p0, v0}, Lc8/LKd;->switchThroughMessage(Z)V

    .line 141
    iget-object v0, p0, Lc8/LKd;->pushAPI:Lc8/CKd;

    iget-object v1, p0, Lc8/LKd;->appId:Ljava/lang/String;

    iget-object v2, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    iget v4, p0, Lc8/LKd;->switchType:I

    iget-boolean v5, p0, Lc8/LKd;->switcher:Z

    invoke-virtual/range {v0 .. v5}, Lc8/CKd;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lc8/WHd;

    move-result-object v6

    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-virtual {v6}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v7

    .line 155
    .local v7, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 156
    const-string/jumbo v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_5
    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushSwitchStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {p0, p1}, Lc8/LKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .prologue
    .line 194
    iget-object v1, p0, Lc8/LKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/LKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/zKd;->sendPushStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    .line 195
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lc8/LKd;->switchType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lc8/LKd;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "app_key"

    iget-object v2, p0, Lc8/LKd;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "strategy_package_name"

    iget-object v2, p0, Lc8/LKd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "push_id"

    iget-object v2, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "strategy_type"

    invoke-virtual {p0}, Lc8/LKd;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "strategy_child_type"

    iget v2, p0, Lc8/LKd;->switchType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string/jumbo v2, "strategy_params"

    iget-boolean v1, p0, Lc8/LKd;->switcher:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_0
    return-object v0

    .line 93
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/LKd;->pushId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSwitchType(I)V
    .locals 0
    .param p1, "switchType"    # I

    .prologue
    .line 56
    iput p1, p0, Lc8/LKd;->switchType:I

    .line 57
    return-void
.end method

.method public setSwitcher(Z)V
    .locals 0
    .param p1, "switcher"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lc8/LKd;->switcher:Z

    .line 53
    return-void
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x10

    return v0
.end method
