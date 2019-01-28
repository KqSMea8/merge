.class public Lc8/lcb;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tcb;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tcb;


# direct methods
.method constructor <init>(Lc8/tcb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tcb;

    .prologue
    .line 67
    iput-object p1, p0, Lc8/lcb;->this$0:Lc8/tcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 69
    iget-object v0, p0, Lc8/lcb;->this$0:Lc8/tcb;

    invoke-static {v0}, Lc8/tcb;->access$000(Lc8/tcb;)Lc8/tfb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/lcb;->this$0:Lc8/tcb;

    invoke-static {v0}, Lc8/tcb;->access$000(Lc8/tcb;)Lc8/tfb;

    move-result-object v0

    iget-object v1, p0, Lc8/lcb;->this$0:Lc8/tcb;

    invoke-static {v1}, Lc8/tcb;->access$100(Lc8/tcb;)Lc8/Hfb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Hfb;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lc8/tfb;->setProgress(F)V

    .line 72
    :cond_0
    return-void
.end method
