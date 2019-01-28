.class public Lc8/zj;
.super Lc8/yj;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserImplApi23"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lc8/oj;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1744
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/yj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    .line 1745
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;Lc8/qj;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lc8/qj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1749
    iget-object v0, p0, Lc8/zj;->mServiceBinderWrapper:Lc8/Oj;

    if-nez v0, :cond_0

    .line 1750
    iget-object v0, p0, Lc8/zj;->mBrowserObj:Ljava/lang/Object;

    iget-object v1, p2, Lc8/qj;->mItemCallbackObj:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lc8/ck;->getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1754
    :goto_0
    return-void

    .line 1752
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/yj;->getItem(Ljava/lang/String;Lc8/qj;)V

    goto :goto_0
.end method
