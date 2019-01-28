.class public final Lcom/uc/webview/export/internal/setup/ak;
.super Lcom/uc/webview/export/internal/setup/o;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 19
    :try_start_0
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const-string/jumbo v0, "setup"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->callback(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "load"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->callback(Ljava/lang/String;)V

    .line 27
    const/16 v0, 0x2725

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move v6, v5

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;-><init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;I)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 30
    const-string/jumbo v0, "init"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->callback(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "switch"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->callback(Ljava/lang/String;)V

    .line 32
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
