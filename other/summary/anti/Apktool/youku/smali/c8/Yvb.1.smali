.class public Lc8/Yvb;
.super Ljava/lang/Object;
.source "ConfiguredWeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/awb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreRender"
.end annotation


# instance fields
.field isPreRenderMode:Z

.field mPreRenderManager:Lc8/qvb;

.field final synthetic this$0:Lc8/awb;


# direct methods
.method constructor <init>(Lc8/awb;)V
    .locals 2

    .prologue
    .line 232
    iput-object p1, p0, Lc8/Yvb;->this$0:Lc8/awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Yvb;->isPreRenderMode:Z

    .line 233
    invoke-static {}, Lc8/qvb;->getInstance()Lc8/qvb;

    move-result-object v0

    iput-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    .line 234
    iget-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    new-instance v1, Lc8/Xvb;

    invoke-direct {v1, p0, p1}, Lc8/Xvb;-><init>(Lc8/Yvb;Lc8/awb;)V

    invoke-virtual {v0, v1}, Lc8/qvb;->setInstanceCreator(Lc8/pvb;)V

    .line 242
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/qvb;->setInstanceCreator(Lc8/pvb;)V

    .line 266
    :cond_0
    return-void
.end method

.method isPreRender()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lc8/Yvb;->isPreRenderMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method renderFromCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    :try_start_0
    iget-object v0, p0, Lc8/Yvb;->mPreRenderManager:Lc8/qvb;

    iget-object v1, p0, Lc8/Yvb;->this$0:Lc8/awb;

    invoke-virtual {v1}, Lc8/awb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Yvb;->this$0:Lc8/awb;

    iget-object v2, v2, Lc8/awb;->mWXSDKInstance:Lc8/nVf;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/qvb;->renderFromCache(Landroid/content/Context;Lc8/nVf;Lc8/NUf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iput-boolean v4, p0, Lc8/Yvb;->isPreRenderMode:Z

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lc8/Yvb;->isPreRenderMode:Z

    throw v0
.end method

.method setPreRender(Z)V
    .locals 0
    .param p1, "preRender"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lc8/Yvb;->isPreRenderMode:Z

    .line 260
    return-void
.end method
