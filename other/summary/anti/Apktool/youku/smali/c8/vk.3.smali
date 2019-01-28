.class public Lc8/vk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xk;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/xk;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Lc8/xk;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .param p1, "this$1"    # Lc8/xk;

    .prologue
    .line 175
    iput-object p1, p0, Lc8/vk;->this$1:Lc8/xk;

    iput-object p2, p0, Lc8/vk;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 178
    iget-object v2, p0, Lc8/vk;->this$1:Lc8/xk;

    iget-object v2, v2, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/mk;

    .line 182
    .local v0, "connection":Lc8/mk;
    :try_start_0
    iget-object v2, v0, Lc8/mk;->callbacks:Lc8/Ik;

    iget-object v3, v0, Lc8/mk;->root:Lc8/lk;

    invoke-virtual {v3}, Lc8/lk;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/vk;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v5, v0, Lc8/mk;->root:Lc8/lk;

    .line 183
    invoke-virtual {v5}, Lc8/lk;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 182
    invoke-interface {v2, v3, v4, v5}, Lc8/Ik;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lc8/mk;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is no longer valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 189
    .end local v0    # "connection":Lc8/mk;
    :cond_0
    return-void
.end method
