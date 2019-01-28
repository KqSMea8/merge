.class public Lc8/pyb;
.super Ljava/lang/Object;
.source "AliWXActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qyb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/qyb;


# direct methods
.method constructor <init>(Lc8/qyb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/qyb;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/pyb;->this$1:Lc8/qyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 84
    iget-object v0, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v0, v0, Lc8/qyb;->this$0:Lc8/syb;

    iget-object v1, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v1, v1, Lc8/qyb;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v2, v2, Lc8/qyb;->this$0:Lc8/syb;

    invoke-static {v2}, Lc8/syb;->access$000(Lc8/syb;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/syb;->access$100(Lc8/syb;Landroid/app/Activity;Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v0, v0, Lc8/qyb;->this$0:Lc8/syb;

    iget-object v1, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v1, v1, Lc8/qyb;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lc8/pyb;->this$1:Lc8/qyb;

    iget-object v2, v2, Lc8/qyb;->this$0:Lc8/syb;

    invoke-static {v2}, Lc8/syb;->access$000(Lc8/syb;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/syb;->access$100(Lc8/syb;Landroid/app/Activity;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 89
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 75
    return-void
.end method
