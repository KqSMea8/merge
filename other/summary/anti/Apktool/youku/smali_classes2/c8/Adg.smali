.class public Lc8/Adg;
.super Landroid/os/AsyncTask;
.source "WXRecyclerTemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bdg;->asyncLoadTemplateCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bdg;

.field final synthetic val$source:Lc8/jdg;

.field final synthetic val$template:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Bdg;Ljava/lang/String;Lc8/jdg;)V
    .locals 0

    .prologue
    .line 1590
    iput-object p1, p0, Lc8/Adg;->this$0:Lc8/Bdg;

    iput-object p2, p0, Lc8/Adg;->val$template:Ljava/lang/String;

    iput-object p3, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1590
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Adg;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 1593
    iget-object v2, p0, Lc8/Adg;->this$0:Lc8/Bdg;

    invoke-static {v2}, Lc8/Bdg;->access$500(Lc8/Bdg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lc8/Adg;->val$template:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qdg;

    .line 1594
    .local v0, "cellCache":Lc8/qdg;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v2, :cond_2

    .line 1607
    :cond_0
    :goto_0
    return-object v4

    .line 1605
    .local v1, "component":Lc8/jdg;
    :cond_1
    iget-object v2, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v1    # "component":Lc8/jdg;
    :cond_2
    iget-object v2, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    iget-object v3, p0, Lc8/Adg;->this$0:Lc8/Bdg;

    invoke-static {v3}, Lc8/Bdg;->access$600(Lc8/Bdg;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1598
    iget-object v2, p0, Lc8/Adg;->this$0:Lc8/Bdg;

    iget-object v3, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-static {v2, v3}, Lc8/Bdg;->access$700(Lc8/Bdg;Lc8/jdg;)Lc8/tbg;

    move-result-object v1

    check-cast v1, Lc8/jdg;

    .line 1599
    .restart local v1    # "component":Lc8/jdg;
    if-eqz v1, :cond_0

    .line 1602
    iget-object v2, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v2}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v2}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->isDestroy()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1590
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Adg;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1611
    iget-object v1, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v1}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Adg;->val$source:Lc8/jdg;

    invoke-virtual {v1}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->isDestroy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-object v1, p0, Lc8/Adg;->this$0:Lc8/Bdg;

    invoke-static {v1}, Lc8/Bdg;->access$500(Lc8/Bdg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lc8/Adg;->val$template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qdg;

    .line 1615
    .local v0, "cellCache":Lc8/qdg;
    if-eqz v0, :cond_0

    .line 1618
    iget-object v1, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1620
    :cond_2
    iput-boolean v3, v0, Lc8/qdg;->isLoadIng:Z

    goto :goto_0

    .line 1623
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lc8/zdg;

    invoke-direct {v2, p0, v0}, Lc8/zdg;-><init>(Lc8/Adg;Lc8/qdg;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1641
    iput-boolean v3, v0, Lc8/qdg;->isLoadIng:Z

    goto :goto_0
.end method
