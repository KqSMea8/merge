.class public Lc8/vg;
.super Lc8/th;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lc8/yg;


# direct methods
.method constructor <init>(Lc8/yg;)V
    .locals 1
    .param p1, "this$0"    # Lc8/yg;

    .prologue
    .line 278
    iput-object p1, p0, Lc8/vg;->this$0:Lc8/yg;

    invoke-direct {p0}, Lc8/th;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vg;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lc8/uh;)V
    .locals 1
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vg;->mCanceled:Z

    .line 285
    return-void
.end method

.method public onTransitionEnd(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 292
    return-void
.end method

.method public onTransitionPause(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 297
    return-void
.end method

.method public onTransitionResume(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 302
    return-void
.end method
