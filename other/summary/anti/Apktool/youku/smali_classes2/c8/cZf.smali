.class public Lc8/cZf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eZf;->createAnimatorListener(Lc8/nVf;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eZf;

.field final synthetic val$callBack:Ljava/lang/String;

.field final synthetic val$instance:Lc8/nVf;


# direct methods
.method constructor <init>(Lc8/eZf;Lc8/nVf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lc8/cZf;->this$0:Lc8/eZf;

    iput-object p2, p0, Lc8/cZf;->val$instance:Lc8/nVf;

    iput-object p3, p0, Lc8/cZf;->val$callBack:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 235
    iget-object v0, p0, Lc8/cZf;->val$instance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/cZf;->val$instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    const-string/jumbo v0, "RenderActionContextImpl-onAnimationEnd WXSDKInstance == null NPE or instance is destroyed"

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    iget-object v1, p0, Lc8/cZf;->val$instance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/cZf;->val$callBack:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
