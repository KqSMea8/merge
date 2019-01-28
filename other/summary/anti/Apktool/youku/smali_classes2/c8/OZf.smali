.class public Lc8/OZf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WXTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lc8/QZf;


# direct methods
.method constructor <init>(Lc8/QZf;)V
    .locals 1

    .prologue
    .line 485
    iput-object p1, p0, Lc8/OZf;->this$0:Lc8/QZf;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/OZf;->hasCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OZf;->hasCancel:Z

    .line 492
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 496
    iget-boolean v0, p0, Lc8/OZf;->hasCancel:Z

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 500
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WXTransition layout onTransitionAnimationEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OZf;->this$0:Lc8/QZf;

    invoke-static {v1}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 503
    :cond_1
    iget-object v0, p0, Lc8/OZf;->this$0:Lc8/QZf;

    invoke-static {v0}, Lc8/QZf;->access$600(Lc8/QZf;)V

    goto :goto_0
.end method
