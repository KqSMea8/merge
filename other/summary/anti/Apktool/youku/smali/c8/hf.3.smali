.class public Lc8/hf;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplHoneycombMr1.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jf;->addUpdateListener(Lc8/cf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jf;

.field final synthetic val$updateListener:Lc8/cf;


# direct methods
.method constructor <init>(Lc8/jf;Lc8/cf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jf;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/hf;->this$0:Lc8/jf;

    iput-object p2, p0, Lc8/hf;->val$updateListener:Lc8/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/hf;->val$updateListener:Lc8/cf;

    invoke-interface {v0}, Lc8/cf;->onAnimationUpdate()V

    .line 57
    return-void
.end method
