.class public Lc8/FHd;
.super Lc8/iHd;
.source "UnRegisterStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string/jumbo v1, "extra_app_push_un_register_status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .line 27
    .local v0, "unRegisterStatus":Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->isUnRegisterSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lc8/FHd;->context()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lc8/FHd;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/ELd;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lc8/FHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x400

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "start UnRegisterStatusHandler match"

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "un_register_status"

    .line 44
    invoke-virtual {p0, p1}, Lc8/FHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 43
    goto :goto_0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;Lc8/WJd;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 35
    invoke-virtual {p0}, Lc8/FHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lc8/FHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    invoke-virtual {p0}, Lc8/FHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/dHd;->onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-virtual {p0, p1, p2}, Lc8/FHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;Lc8/WJd;)V

    return-void
.end method
