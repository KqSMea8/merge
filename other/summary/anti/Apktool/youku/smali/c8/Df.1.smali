.class public Lc8/Df;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedVectorDrawableCompatState"
.end annotation


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mTargetNameMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Lc8/Tf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Df;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "copy"    # Lc8/Df;
    .param p3, "owner"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p4, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 509
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 510
    if-eqz p2, :cond_3

    .line 511
    iget v7, p2, Lc8/Df;->mChangingConfigurations:I

    iput v7, p0, Lc8/Df;->mChangingConfigurations:I

    .line 512
    iget-object v7, p2, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    if-eqz v7, :cond_0

    .line 513
    iget-object v7, p2, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    invoke-virtual {v7}, Lc8/Tf;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 514
    .local v2, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p4, :cond_1

    .line 515
    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lc8/Tf;

    iput-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    .line 519
    :goto_0
    iget-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    invoke-virtual {v7}, Lc8/Tf;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lc8/Tf;

    iput-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    .line 520
    iget-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    invoke-virtual {v7, p3}, Lc8/Tf;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 521
    iget-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    iget-object v8, p2, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    invoke-virtual {v8}, Lc8/Tf;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/Tf;->setBounds(Landroid/graphics/Rect;)V

    .line 522
    iget-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lc8/Tf;->setAllowCaching(Z)V

    .line 524
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v7, p2, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 525
    iget-object v7, p2, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 526
    .local v4, "numAnimators":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    .line 527
    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7, v4}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v7, p0, Lc8/Df;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    .line 528
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 529
    iget-object v7, p2, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 530
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    .line 531
    .local v1, "animClone":Landroid/animation/Animator;
    iget-object v7, p2, Lc8/Df;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 532
    .local v5, "targetName":Ljava/lang/String;
    iget-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    invoke-virtual {v7, v5}, Lc8/Tf;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 533
    .local v6, "targetObject":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 534
    iget-object v7, p0, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v7, p0, Lc8/Df;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v1, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 517
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "animClone":Landroid/animation/Animator;
    .end local v3    # "i":I
    .end local v4    # "numAnimators":I
    .end local v5    # "targetName":Ljava/lang/String;
    .end local v6    # "targetObject":Ljava/lang/Object;
    .restart local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lc8/Tf;

    iput-object v7, p0, Lc8/Df;->mVectorDrawable:Lc8/Tf;

    goto :goto_0

    .line 537
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v3    # "i":I
    .restart local v4    # "numAnimators":I
    :cond_2
    invoke-virtual {p0}, Lc8/Df;->setupAnimatorSet()V

    .line 540
    .end local v3    # "i":I
    .end local v4    # "numAnimators":I
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lc8/Df;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/Df;

    .prologue
    .line 500
    iget-object v0, p0, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Df;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lc8/Df;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 500
    iput-object p1, p0, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lc8/Df;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupAnimatorSet()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lc8/Df;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lc8/Df;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 561
    :cond_0
    iget-object v0, p0, Lc8/Df;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lc8/Df;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 562
    return-void
.end method
