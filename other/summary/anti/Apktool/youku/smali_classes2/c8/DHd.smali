.class public Lc8/DHd;
.super Lc8/iHd;
.source "SubScribeAliasStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;",
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

.method private storeAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Lc8/DHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lc8/DHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc8/ELd;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string/jumbo v1, "extra_app_push_sub_alias_status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .line 27
    .local v0, "subAliasStatus":Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    const-string/jumbo v1, "200"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/DHd;->storeAlias(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lc8/DHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x1000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "start SubScribeAliasStatusHandler match"

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sub_alias_status"

    .line 44
    invoke-virtual {p0, p1}, Lc8/DHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

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

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;Lc8/WJd;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 35
    invoke-virtual {p0}, Lc8/DHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lc8/DHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    invoke-virtual {p0}, Lc8/DHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/dHd;->onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    invoke-virtual {p0, p1, p2}, Lc8/DHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;Lc8/WJd;)V

    return-void
.end method
