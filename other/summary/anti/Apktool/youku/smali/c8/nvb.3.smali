.class public Lc8/nvb;
.super Ljava/lang/Object;
.source "PreRenderManager.java"

# interfaces
.implements Lc8/SUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qvb;->addTaskInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lc8/EWf;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qvb;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$isResumeState:Z

.field final synthetic val$options:Ljava/util/Map;

.field final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qvb;Ljava/lang/String;Ljava/util/Map;ZLc8/EWf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qvb;

    .prologue
    .line 165
    iput-object p1, p0, Lc8/nvb;->this$0:Lc8/qvb;

    iput-object p2, p0, Lc8/nvb;->val$targetUrl:Ljava/lang/String;

    iput-object p3, p0, Lc8/nvb;->val$options:Ljava/util/Map;

    iput-boolean p4, p0, Lc8/nvb;->val$isResumeState:Z

    iput-object p5, p0, Lc8/nvb;->val$callback:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinish(Lc8/nVf;)V
    .locals 5
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lc8/nvb;->this$0:Lc8/qvb;

    iget-object v1, p0, Lc8/nvb;->val$targetUrl:Ljava/lang/String;

    iget-object v2, p0, Lc8/nvb;->val$options:Ljava/util/Map;

    iget-boolean v3, p0, Lc8/nvb;->val$isResumeState:Z

    invoke-static {v0, v1, p1, v2, v3}, Lc8/qvb;->access$000(Lc8/qvb;Ljava/lang/String;Lc8/nVf;Ljava/util/Map;Z)V

    .line 169
    iget-object v0, p0, Lc8/nvb;->val$callback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lc8/nvb;->this$0:Lc8/qvb;

    iget-object v1, p0, Lc8/nvb;->val$callback:Lc8/EWf;

    iget-object v2, p0, Lc8/nvb;->val$targetUrl:Ljava/lang/String;

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "success"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/qvb;->access$100(Lc8/qvb;Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preRender success. [targetUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nvb;->val$targetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    return-void
.end method
