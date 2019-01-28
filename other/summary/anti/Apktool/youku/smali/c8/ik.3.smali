.class public Lc8/ik;
.super Lc8/yk;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lk;->performLoadChildren(Ljava/lang/String;Lc8/mk;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yk",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lk;

.field final synthetic val$connection:Lc8/mk;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Lk;Ljava/lang/Object;Lc8/mk;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 1137
    iput-object p1, p0, Lc8/ik;->this$0:Lc8/Lk;

    iput-object p3, p0, Lc8/ik;->val$connection:Lc8/mk;

    iput-object p4, p0, Lc8/ik;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Lc8/ik;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lc8/yk;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1137
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lc8/ik;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 4
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v1, p0, Lc8/ik;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lc8/ik;->val$connection:Lc8/mk;

    iget-object v2, v2, Lc8/mk;->callbacks:Lc8/Ik;

    invoke-interface {v2}, Lc8/Ik;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lc8/ik;->val$connection:Lc8/mk;

    if-eq v1, v2, :cond_1

    .line 1141
    sget-boolean v1, Lc8/Lk;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ik;->val$connection:Lc8/mk;

    iget-object v2, v2, Lc8/mk;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ik;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/ik;->this$0:Lc8/Lk;

    iget-object v2, p0, Lc8/ik;->val$options:Landroid/os/Bundle;

    .line 1150
    invoke-virtual {v1, p1, v2}, Lc8/Lk;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 1152
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc8/ik;->val$connection:Lc8/mk;

    iget-object v1, v1, Lc8/mk;->callbacks:Lc8/Ik;

    iget-object v2, p0, Lc8/ik;->val$parentId:Ljava/lang/String;

    iget-object v3, p0, Lc8/ik;->val$options:Landroid/os/Bundle;

    invoke-interface {v1, v2, v0, v3}, Lc8/Ik;->onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling onLoadChildren() failed for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ik;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ik;->val$connection:Lc8/mk;

    iget-object v2, v2, Lc8/mk;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .end local v0    # "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_2
    move-object v0, p1

    .line 1150
    goto :goto_1
.end method
