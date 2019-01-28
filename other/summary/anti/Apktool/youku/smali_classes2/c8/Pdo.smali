.class public Lc8/Pdo;
.super Ljava/lang/Object;
.source "SmoothImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tdo;->startTransform(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tdo;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lc8/Tdo;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Tdo;

    .prologue
    .line 430
    iput-object p1, p0, Lc8/Pdo;->this$0:Lc8/Tdo;

    iput p2, p0, Lc8/Pdo;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 446
    iget v0, p0, Lc8/Pdo;->val$state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lc8/Pdo;->this$0:Lc8/Tdo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Tdo;->access$402(Lc8/Tdo;I)I

    .line 449
    :cond_0
    iget-object v0, p0, Lc8/Pdo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$500(Lc8/Tdo;)Lc8/Rdo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lc8/Pdo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$500(Lc8/Tdo;)Lc8/Rdo;

    move-result-object v0

    iget v1, p0, Lc8/Pdo;->val$state:I

    invoke-interface {v0, v1}, Lc8/Rdo;->onTransformComplete(I)V

    .line 452
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 433
    return-void
.end method
