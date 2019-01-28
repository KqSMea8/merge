.class public Lc8/Cg;
.super Lc8/th;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fg;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field mPausedAlpha:F

.field final synthetic this$0:Lc8/Fg;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/Fg;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Fg;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/Cg;->this$0:Lc8/Fg;

    iput-object p2, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Lc8/th;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Cg;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cg;->mCanceled:Z

    .line 164
    return-void
.end method

.method public onTransitionEnd(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 168
    iget-boolean v0, p0, Lc8/Cg;->mCanceled:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    :cond_0
    return-void
.end method

.method public onTransitionPause(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lc8/Cg;->mPausedAlpha:F

    .line 176
    iget-object v0, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    return-void
.end method

.method public onTransitionResume(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 181
    iget-object v0, p0, Lc8/Cg;->val$endView:Landroid/view/View;

    iget v1, p0, Lc8/Cg;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    return-void
.end method
