.class public Lc8/OMg;
.super Ljava/lang/Object;
.source "YKTrackerManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PMg;->scanStaticsParamPlugin(Landroid/view/View;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/PMg;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/PMg;Ljava/util/HashMap;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lc8/PMg;

    .prologue
    .line 395
    iput-object p1, p0, Lc8/OMg;->this$1:Lc8/PMg;

    iput-object p2, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    iput-object p3, p0, Lc8/OMg;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "spm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 400
    iget-object v0, p0, Lc8/OMg;->val$view:Landroid/view/View;

    const-string/jumbo v1, "-1000"

    const-string/jumbo v2, "spm is null"

    invoke-static {v0, v1, v2}, Lc8/IMg;->uploadErrorMsg(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "arg1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lc8/OMg;->val$view:Landroid/view/View;

    const-string/jumbo v1, "-1001"

    const-string/jumbo v2, "arg1 is null"

    invoke-static {v0, v1, v2}, Lc8/IMg;->uploadErrorMsg(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 402
    :cond_2
    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "scm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 403
    iget-object v1, p0, Lc8/OMg;->val$view:Landroid/view/View;

    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "spm"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-1002"

    const-string/jumbo v3, "scm is null"

    invoke-static {v1, v0, v2, v3}, Lc8/IMg;->uploadErrorMsg(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_3
    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "track_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 406
    iget-object v1, p0, Lc8/OMg;->val$view:Landroid/view/View;

    iget-object v0, p0, Lc8/OMg;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "spm"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-1003"

    const-string/jumbo v3, "track_info is null"

    invoke-static {v1, v0, v2, v3}, Lc8/IMg;->uploadErrorMsg(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lc8/OMg;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
