.class public Lc8/Fzb;
.super Lc8/Azb;
.source "UTDefaultConfMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/Azb;-><init>()V

    return-void
.end method


# virtual methods
.method public requestOnlineConfig()V
    .locals 3

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    new-instance v2, Lc8/Ezb;

    invoke-direct {v2, p0}, Lc8/Ezb;-><init>(Lc8/Fzb;)V

    invoke-virtual {v1, v2}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
