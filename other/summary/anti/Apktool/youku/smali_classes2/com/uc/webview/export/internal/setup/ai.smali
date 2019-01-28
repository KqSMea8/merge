.class public final Lcom/uc/webview/export/internal/setup/ai;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ah;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ah;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v9, v0, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/af;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/l;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/l;->mCL:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/l;->mShellCL:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-boolean v5, v5, Lcom/uc/webview/export/internal/setup/l;->a:Z

    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v6, v6, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-boolean v6, v6, Lcom/uc/webview/export/internal/setup/l;->b:Z

    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 v8, 0x2724

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;-><init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;I)V

    invoke-virtual {v9, v0}, Lcom/uc/webview/export/internal/setup/af;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    const-string/jumbo v1, "init"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    const-string/jumbo v1, "switch"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    const-string/jumbo v1, "precreate_webview"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/r;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/webview/export/internal/setup/r;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/r;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/r;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/af;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/l;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/l;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/r;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/r;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/r;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/aj;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/aj;-><init>(Lcom/uc/webview/export/internal/setup/ai;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/r;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/r;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/r;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/af;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ai;->a:Lcom/uc/webview/export/internal/setup/ah;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfb2

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/af;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0
.end method
