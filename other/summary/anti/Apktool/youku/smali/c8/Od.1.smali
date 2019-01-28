.class public Lc8/Od;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qd;->hide(Lc8/Sd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lc8/Qd;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lc8/Sd;


# direct methods
.method constructor <init>(Lc8/Qd;ZLc8/Sd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qd;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/Od;->this$0:Lc8/Qd;

    iput-boolean p2, p0, Lc8/Od;->val$fromUser:Z

    iput-object p3, p0, Lc8/Od;->val$listener:Lc8/Sd;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Od;->mCancelled:Z

    .line 84
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Od;->this$0:Lc8/Qd;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Qd;->mAnimState:I

    .line 90
    iget-boolean v0, p0, Lc8/Od;->mCancelled:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/Od;->this$0:Lc8/Qd;

    iget-object v1, v0, Lc8/Qd;->mView:Lc8/uf;

    iget-boolean v0, p0, Lc8/Od;->val$fromUser:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Lc8/Od;->val$fromUser:Z

    invoke-virtual {v1, v0, v2}, Lc8/uf;->internalSetVisibility(IZ)V

    .line 93
    iget-object v0, p0, Lc8/Od;->val$listener:Lc8/Sd;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/Od;->val$listener:Lc8/Sd;

    invoke-interface {v0}, Lc8/Sd;->onHidden()V

    .line 97
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lc8/Od;->this$0:Lc8/Qd;

    iget-object v0, v0, Lc8/Qd;->mView:Lc8/uf;

    iget-boolean v1, p0, Lc8/Od;->val$fromUser:Z

    invoke-virtual {v0, v2, v1}, Lc8/uf;->internalSetVisibility(IZ)V

    .line 78
    iput-boolean v2, p0, Lc8/Od;->mCancelled:Z

    .line 79
    return-void
.end method
