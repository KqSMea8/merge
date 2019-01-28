.class public Lc8/MZo;
.super Ljava/lang/Object;
.source "HintRefreshHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NZo;->smoothScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/NZo;


# direct methods
.method constructor <init>(Lc8/NZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/NZo;

    .prologue
    .line 184
    iput-object p1, p0, Lc8/MZo;->this$0:Lc8/NZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 188
    iget-object v1, p0, Lc8/MZo;->this$0:Lc8/NZo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lc8/NZo;->setVisibleHeight(I)V

    .line 189
    return-void
.end method
