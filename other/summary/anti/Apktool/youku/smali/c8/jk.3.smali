.class public Lc8/jk;
.super Lc8/yk;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lk;->performLoadItem(Ljava/lang/String;Lc8/mk;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yk",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lk;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lc8/Lk;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 1199
    iput-object p1, p0, Lc8/jk;->this$0:Lc8/Lk;

    iput-object p3, p0, Lc8/jk;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Lc8/yk;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V
    .locals 4
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .param p2, "flags"    # I

    .prologue
    .line 1202
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lc8/jk;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1209
    :goto_0
    return-void

    .line 1206
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1208
    iget-object v1, p0, Lc8/jk;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1199
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1, p2}, Lc8/jk;->onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V

    return-void
.end method
