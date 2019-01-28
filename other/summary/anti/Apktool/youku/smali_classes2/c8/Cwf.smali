.class public Lc8/Cwf;
.super Ljava/lang/Object;
.source "TBNetwork4Phenix.java"


# static fields
.field private static sInited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupHttpLoader(Landroid/content/Context;)V
    .locals 6
    .param p0, "app"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->httpLoaderBuilder()Lc8/xvf;

    move-result-object v1

    new-instance v2, Lc8/Kwf;

    invoke-direct {v2, p0}, Lc8/Kwf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lc8/xvf;->with(Lc8/Exf;)Lc8/xvf;

    .line 23
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Cwf;->sInited:Z

    .line 24
    const-string/jumbo v1, "TBNetwork4Phenix"

    const-string/jumbo v2, "http loader setup"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "TBNetwork4Phenix"

    const-string/jumbo v2, "http loader setup error=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setupQualityChangedMonitor()V
    .locals 3

    .prologue
    .line 32
    sget-boolean v0, Lc8/Cwf;->sInited:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lc8/Awf;

    invoke-direct {v0}, Lc8/Awf;-><init>()V

    new-instance v1, Lc8/Bwf;

    invoke-direct {v1}, Lc8/Bwf;-><init>()V

    invoke-static {v0, v1}, Lc8/RN;->addListener(Lc8/VJ;Lc8/XJ;)V

    .line 49
    const-string/jumbo v0, "TBNetwork4Phenix"

    const-string/jumbo v1, "network quality monitor setup"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
