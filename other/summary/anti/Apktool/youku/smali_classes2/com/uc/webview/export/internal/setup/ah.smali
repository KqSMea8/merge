.class public final Lcom/uc/webview/export/internal/setup/ah;
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
        "Lcom/uc/webview/export/internal/setup/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/l;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/ag;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ag;Lcom/uc/webview/export/internal/setup/l;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    const-string/jumbo v1, "load"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->callback(Ljava/lang/String;)V

    new-instance v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/m;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/af;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/m;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/l;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/m;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/l;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/m;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/m;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/m;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Lcom/uc/webview/export/internal/setup/ag;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/ag;->a:Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/m;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/ai;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/ai;-><init>(Lcom/uc/webview/export/internal/setup/ah;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/m;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/m;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
