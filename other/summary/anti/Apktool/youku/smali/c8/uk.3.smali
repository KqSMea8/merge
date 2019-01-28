.class public Lc8/uk;
.super Lc8/sk;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lc8/Wk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceImplApi24"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;

    .prologue
    .line 374
    iput-object p1, p0, Lc8/uk;->this$0:Lc8/Lk;

    invoke-direct {p0, p1}, Lc8/sk;-><init>(Lc8/Lk;)V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lc8/uk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mCurConnection:Lc8/mk;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lc8/uk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v0, v0, Lc8/mk;->rootHints:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 424
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lc8/uk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v1, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lc8/uk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Xk;->getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 386
    iget-object v0, p0, Lc8/uk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lc8/Qk;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lc8/uk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lc8/Xk;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lc8/uk;->this$0:Lc8/Lk;

    invoke-static {v0, p0}, Lc8/Xk;->createService(Landroid/content/Context;Lc8/Wk;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/uk;->mServiceObj:Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lc8/uk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Qk;->onCreate(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Lc8/Vk;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "resultWrapper"    # Lc8/Vk;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 396
    new-instance v0, Lc8/tk;

    invoke-direct {v0, p0, p1, p2}, Lc8/tk;-><init>(Lc8/uk;Ljava/lang/Object;Lc8/Vk;)V

    .line 417
    .local v0, "result":Lc8/yk;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v1, p0, Lc8/uk;->this$0:Lc8/Lk;

    invoke-virtual {v1, p1, v0, p3}, Lc8/Lk;->onLoadChildren(Ljava/lang/String;Lc8/yk;Landroid/os/Bundle;)V

    .line 418
    return-void
.end method
