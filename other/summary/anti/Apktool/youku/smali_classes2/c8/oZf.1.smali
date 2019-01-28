.class public final Lc8/oZf;
.super Ljava/lang/Object;
.source "ReloadPageAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;

.field private mReloadThis:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "reloadThis"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "ReloadPageAction"

    iput-object v0, p0, Lc8/oZf;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lc8/oZf;->mInstanceId:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lc8/oZf;->mReloadThis:Z

    .line 44
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 3
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 48
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 54
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_1

    .line 56
    iget-boolean v1, p0, Lc8/oZf;->mReloadThis:Z

    invoke-virtual {v0, v1}, Lc8/nVf;->reloadPage(Z)V

    goto :goto_0

    .line 58
    :cond_1
    const-string/jumbo v1, "ReloadPageAction"

    const-string/jumbo v2, "ReloadPageAction executeDom reloadPage instance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 0
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 65
    return-void
.end method
