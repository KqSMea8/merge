.class public Lc8/Dsf;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->loadConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jsf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/Dsf;->this$0:Lc8/Jsf;

    iput-object p2, p0, Lc8/Dsf;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lc8/Ytf;->setThreadPriority()V

    .line 219
    iget-object v1, p0, Lc8/Dsf;->this$0:Lc8/Jsf;

    invoke-static {v1}, Lc8/Jsf;->access$700(Lc8/Jsf;)Lc8/Itf;

    move-result-object v1

    iget-object v2, p0, Lc8/Dsf;->val$namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/Itf;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v0

    .line 220
    .local v0, "namespaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "loadConfig namespace not exit in index table"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lc8/Dsf;->this$0:Lc8/Jsf;

    iget-object v2, p0, Lc8/Dsf;->val$namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/Jsf;->addFail(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lc8/Dsf;->this$0:Lc8/Jsf;

    invoke-virtual {v1, v0, v3}, Lc8/Jsf;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z

    goto :goto_0
.end method
