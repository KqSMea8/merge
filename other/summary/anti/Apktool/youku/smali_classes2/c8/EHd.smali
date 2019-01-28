.class public Lc8/EHd;
.super Lc8/iHd;
.source "SubScribeTagsStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const-string/jumbo v1, "extra_app_push_sub_tags_status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .line 24
    .local v0, "subTagsStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/EHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x800

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "start SubScribeTagsStatusHandler match"

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sub_tags_status"

    .line 38
    invoke-virtual {p0, p1}, Lc8/EHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;Lc8/WJd;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 29
    invoke-virtual {p0}, Lc8/EHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lc8/EHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    invoke-virtual {p0}, Lc8/EHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/dHd;->onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    .line 32
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-virtual {p0, p1, p2}, Lc8/EHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;Lc8/WJd;)V

    return-void
.end method
