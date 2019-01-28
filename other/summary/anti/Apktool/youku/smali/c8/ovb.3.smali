.class public Lc8/ovb;
.super Ljava/lang/Object;
.source "PreRenderManager.java"

# interfaces
.implements Lc8/NUf;


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

.field final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qvb;Lc8/EWf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qvb;

    .prologue
    .line 179
    iput-object p1, p0, Lc8/ovb;->this$0:Lc8/qvb;

    iput-object p2, p0, Lc8/ovb;->val$callback:Lc8/EWf;

    iput-object p3, p0, Lc8/ovb;->val$targetUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lc8/ovb;->val$callback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lc8/ovb;->this$0:Lc8/qvb;

    iget-object v1, p0, Lc8/ovb;->val$callback:Lc8/EWf;

    iget-object v2, p0, Lc8/ovb;->val$targetUrl:Ljava/lang/String;

    const-string/jumbo v3, "failed"

    invoke-static {v0, v1, v2, v3, p3}, Lc8/qvb;->access$100(Lc8/qvb;Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preRender failed because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    return-void
.end method

.method public onRefreshSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 204
    return-void
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 199
    return-void
.end method
