.class public Lc8/Rj;
.super Lc8/Qj;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc8/dk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StubApi24"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Sj;


# direct methods
.method constructor <init>(Lc8/Sj;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lc8/Rj;->this$0:Lc8/Sj;

    invoke-direct {p0, p1}, Lc8/Qj;-><init>(Lc8/Sj;)V

    .line 729
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lc8/Rj;->this$0:Lc8/Sj;

    .line 735
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 734
    invoke-virtual {v0, p1, v1, p3}, Lc8/Sj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 736
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 740
    iget-object v0, p0, Lc8/Rj;->this$0:Lc8/Sj;

    invoke-virtual {v0, p1, p2}, Lc8/Sj;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    return-void
.end method
