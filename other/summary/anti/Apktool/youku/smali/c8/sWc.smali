.class public Lc8/sWc;
.super Ljava/lang/Object;
.source "OrangeChannel.java"

# interfaces
.implements Lc8/oWc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rWc;
    }
.end annotation


# instance fields
.field private final mConfigListener:Lcom/taobao/orange/OrangeConfigListenerV1;

.field messageHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/qWc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    .line 18
    new-instance v0, Lc8/rWc;

    invoke-direct {v0, p0}, Lc8/rWc;-><init>(Lc8/sWc;)V

    iput-object v0, p0, Lc8/sWc;->mConfigListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    .line 46
    return-void
.end method


# virtual methods
.method public getLastMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const-string/jumbo v1, "data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerMessageHandler(Ljava/lang/String;Lc8/qWc;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/qWc;

    .prologue
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    iget-object v1, p0, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 25
    .local v0, "list":Ljava/util/ArrayList;
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .restart local v0    # "list":Ljava/util/ArrayList;
    iget-object v1, p0, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lc8/sWc;->mConfigListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v1, v2, v3}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 32
    .end local v0    # "list":Ljava/util/ArrayList;
    :cond_1
    return-void
.end method

.method public unregisterMessageHandler(Ljava/lang/String;Lc8/qWc;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/qWc;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .local v0, "list":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lc8/sWc;->mConfigListener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v1, v2, v3}, Lc8/ctf;->unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 44
    .end local v0    # "list":Ljava/util/ArrayList;
    :cond_1
    return-void
.end method
