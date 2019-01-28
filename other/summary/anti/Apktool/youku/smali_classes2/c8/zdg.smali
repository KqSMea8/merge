.class public Lc8/zdg;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Adg;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Adg;

.field final synthetic val$cellCache:Lc8/qdg;


# direct methods
.method constructor <init>(Lc8/Adg;Lc8/qdg;)V
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lc8/zdg;->this$1:Lc8/Adg;

    iput-object p2, p0, Lc8/zdg;->val$cellCache:Lc8/qdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1626
    iget-object v4, p0, Lc8/zdg;->this$1:Lc8/Adg;

    iget-object v4, v4, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v4}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/zdg;->this$1:Lc8/Adg;

    iget-object v4, v4, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v4}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->isDestroy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return v3

    .line 1629
    :cond_1
    iget-object v4, p0, Lc8/zdg;->val$cellCache:Lc8/qdg;

    iget-object v2, v4, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1630
    .local v2, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1631
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1632
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 1633
    .local v0, "component":Lc8/jdg;
    invoke-virtual {v0}, Lc8/jdg;->isLazy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1634
    iget-object v3, p0, Lc8/zdg;->this$1:Lc8/Adg;

    iget-object v3, v3, Lc8/Adg;->val$template:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lc8/Bdg;->access$800(Lc8/jdg;Ljava/lang/String;Z)V

    .line 1635
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    goto :goto_0
.end method
