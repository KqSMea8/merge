.class public Lc8/lZf;
.super Ljava/lang/Object;
.source "ModuleInvocationAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private mArgs:Lcom/alibaba/fastjson/JSONArray;

.field private mInvoker:Lc8/DWf;

.field private mWXModule:Lc8/MXf;


# direct methods
.method constructor <init>(Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)V
    .locals 0
    .param p1, "wxModule"    # Lc8/MXf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "invoker"    # Lc8/DWf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc8/lZf;->mWXModule:Lc8/MXf;

    .line 42
    iput-object p2, p0, Lc8/lZf;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    .line 43
    iput-object p3, p0, Lc8/lZf;->mInvoker:Lc8/DWf;

    .line 44
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 1
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 48
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 6
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v2

    .local v2, "instance":Lc8/nVf;
    if-nez v2, :cond_1

    .line 67
    .end local v2    # "instance":Lc8/nVf;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v2    # "instance":Lc8/nVf;
    :cond_1
    invoke-virtual {v2}, Lc8/nVf;->getNativeInvokeHelper()Lc8/JWf;

    move-result-object v1

    .line 62
    .local v1, "helper":Lc8/JWf;
    :try_start_0
    iget-object v3, p0, Lc8/lZf;->mWXModule:Lc8/MXf;

    iget-object v4, p0, Lc8/lZf;->mInvoker:Lc8/DWf;

    iget-object v5, p0, Lc8/lZf;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v3, v4, v5}, Lc8/JWf;->invoke(Ljava/lang/Object;Lc8/DWf;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callModuleMethod >>> invoke module:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/lZf;->mWXModule:Lc8/MXf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
