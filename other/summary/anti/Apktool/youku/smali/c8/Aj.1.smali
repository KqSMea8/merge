.class public Lc8/Aj;
.super Lc8/zj;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserImplApi24"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lc8/oj;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1761
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/zj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    .line 1762
    return-void
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1767
    if-nez p2, :cond_0

    .line 1768
    iget-object v0, p0, Lc8/Aj;->mBrowserObj:Ljava/lang/Object;

    .line 1769
    invoke-static {p3}, Lc8/Sj;->access$200(Lc8/Sj;)Ljava/lang/Object;

    move-result-object v1

    .line 1768
    invoke-static {v0, p1, v1}, Lc8/Zj;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1774
    :goto_0
    return-void

    .line 1771
    :cond_0
    iget-object v0, p0, Lc8/Aj;->mBrowserObj:Ljava/lang/Object;

    .line 1772
    invoke-static {p3}, Lc8/Sj;->access$200(Lc8/Sj;)Ljava/lang/Object;

    move-result-object v1

    .line 1771
    invoke-static {v0, p1, p2, v1}, Lc8/fk;->subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Lc8/Sj;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/Sj;

    .prologue
    .line 1778
    if-nez p2, :cond_0

    .line 1779
    iget-object v0, p0, Lc8/Aj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lc8/Zj;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1784
    :goto_0
    return-void

    .line 1781
    :cond_0
    iget-object v0, p0, Lc8/Aj;->mBrowserObj:Ljava/lang/Object;

    .line 1782
    invoke-static {p2}, Lc8/Sj;->access$200(Lc8/Sj;)Ljava/lang/Object;

    move-result-object v1

    .line 1781
    invoke-static {v0, p1, v1}, Lc8/fk;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
