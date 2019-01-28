.class public Lc8/Ngn;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Lc8/Pgn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Nnk;->add(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public addListener(Lc8/Ogn;)V
    .locals 1
    .param p1, "listener"    # Lc8/Ogn;

    .prologue
    .line 44
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Nnk;->addListener(Lc8/Ogn;)V

    .line 45
    return-void
.end method

.method public favorite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "showid"    # Ljava/lang/String;
    .param p4, "plid"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-virtual {p0, p1, p5}, Lc8/Ngn;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 14
    invoke-virtual {p0, p2, p3, p4}, Lc8/Ngn;->favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "showid"    # Ljava/lang/String;
    .param p3, "plid"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/Nnk;->favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Nnk;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 20
    return-void
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Nnk;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pollRun()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    iget-object v0, v0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    iget-object v0, v0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lc8/Nnk;->getInstance()Lc8/Nnk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Nnk;->remove(Ljava/lang/String;)V

    .line 35
    return-void
.end method
