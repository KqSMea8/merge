.class public Lc8/ofg;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sfg;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sfg;

.field final synthetic val$ring:Lc8/rfg;


# direct methods
.method constructor <init>(Lc8/sfg;Lc8/rfg;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lc8/ofg;->this$0:Lc8/sfg;

    iput-object p2, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 433
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    invoke-virtual {v0}, Lc8/rfg;->storeOriginals()V

    .line 438
    iget-object v0, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    invoke-virtual {v0}, Lc8/rfg;->goToNextColor()V

    .line 439
    iget-object v0, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    iget-object v1, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    invoke-virtual {v1}, Lc8/rfg;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lc8/rfg;->setStartTrim(F)V

    .line 440
    iget-object v0, p0, Lc8/ofg;->this$0:Lc8/sfg;

    iget-boolean v0, v0, Lc8/sfg;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lc8/ofg;->this$0:Lc8/sfg;

    iput-boolean v2, v0, Lc8/sfg;->mFinishing:Z

    .line 444
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 445
    iget-object v0, p0, Lc8/ofg;->val$ring:Lc8/rfg;

    invoke-virtual {v0, v2}, Lc8/rfg;->setShowArrow(Z)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lc8/ofg;->this$0:Lc8/sfg;

    iget-object v1, p0, Lc8/ofg;->this$0:Lc8/sfg;

    invoke-static {v1}, Lc8/sfg;->access$400(Lc8/sfg;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lc8/sfg;->access$402(Lc8/sfg;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 427
    iget-object v0, p0, Lc8/ofg;->this$0:Lc8/sfg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/sfg;->access$402(Lc8/sfg;F)F

    .line 428
    return-void
.end method
