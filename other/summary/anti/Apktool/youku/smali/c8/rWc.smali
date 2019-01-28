.class public Lc8/rWc;
.super Ljava/lang/Object;
.source "OrangeChannel.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigListenerV1"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sWc;


# direct methods
.method constructor <init>(Lc8/sWc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sWc;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/rWc;->this$0:Lc8/sWc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const-string/jumbo v4, "data"

    const-string/jumbo v5, ""

    invoke-virtual {v3, p1, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lc8/rWc;->this$0:Lc8/sWc;

    iget-object v3, v3, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lc8/rWc;->this$0:Lc8/sWc;

    iget-object v3, v3, Lc8/sWc;->messageHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 54
    .local v2, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baseproject/message/MessageHandler;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qWc;

    .line 56
    .local v1, "handler":Lc8/qWc;
    invoke-interface {v1, p1, v0}, Lc8/qWc;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "handler":Lc8/qWc;
    .end local v2    # "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baseproject/message/MessageHandler;>;"
    :cond_0
    return-void
.end method
