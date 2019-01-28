.class public Lc8/Bng;
.super Ljava/lang/Object;
.source "AntFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAntEvaluator(Landroid/content/Context;Z)Lc8/zng;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pullFetchModel"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lc8/zng;

    invoke-direct {v0, p0}, Lc8/zng;-><init>(Landroid/content/Context;)V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Ang;

    invoke-direct {v0, p0}, Lc8/Ang;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static createAntStore(Landroid/content/Context;Z)Lc8/Ong;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pullFetchModel"    # Z

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lc8/Png;

    invoke-direct {v0, p0}, Lc8/Png;-><init>(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Qng;

    invoke-direct {v0, p0}, Lc8/Qng;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static createAntUpdate(Landroid/content/Context;Lc8/Ong;Lc8/Xng;Lc8/Rng;Z)Lc8/Cng;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "antStore"    # Lc8/Ong;
    .param p2, "antNotifier"    # Lc8/Xng;
    .param p3, "builder"    # Lc8/Rng;
    .param p4, "pullFetchModel"    # Z

    .prologue
    .line 53
    if-eqz p4, :cond_0

    .line 54
    new-instance v0, Lc8/Gng;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Gng;-><init>(Landroid/content/Context;Lc8/Ong;Lc8/Xng;Lc8/Rng;)V

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Hng;

    invoke-direct {v0, p0, p1, p2}, Lc8/Hng;-><init>(Landroid/content/Context;Lc8/Ong;Lc8/Xng;)V

    goto :goto_0
.end method

.method public static createNativeBucketFetcher(Landroid/content/Context;Lc8/sng;Z)Lc8/tng;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fetcherReader"    # Lc8/sng;
    .param p2, "pullFetchModel"    # Z

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Lc8/vng;

    invoke-direct {v0, p0, p1}, Lc8/vng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/xng;

    invoke-direct {v0, p0, p1}, Lc8/xng;-><init>(Landroid/content/Context;Lc8/sng;)V

    goto :goto_0
.end method

.method public static createWebBucketFetcher(Landroid/content/Context;Lc8/sng;Z)Lc8/ung;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fetcherReader"    # Lc8/sng;
    .param p2, "pullFetchModel"    # Z

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lc8/wng;

    invoke-direct {v0, p0, p1}, Lc8/wng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/yng;

    invoke-direct {v0, p0, p1}, Lc8/yng;-><init>(Landroid/content/Context;Lc8/sng;)V

    goto :goto_0
.end method
