.class public Lc8/Pd;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qd;->show(Lc8/Sd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qd;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lc8/Sd;


# direct methods
.method constructor <init>(Lc8/Qd;ZLc8/Sd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qd;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/Pd;->this$0:Lc8/Qd;

    iput-boolean p2, p0, Lc8/Pd;->val$fromUser:Z

    iput-object p3, p0, Lc8/Pd;->val$listener:Lc8/Sd;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-object v0, p0, Lc8/Pd;->this$0:Lc8/Qd;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Qd;->mAnimState:I

    .line 142
    iget-object v0, p0, Lc8/Pd;->val$listener:Lc8/Sd;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lc8/Pd;->val$listener:Lc8/Sd;

    invoke-interface {v0}, Lc8/Sd;->onShown()V

    .line 145
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/Pd;->this$0:Lc8/Qd;

    iget-object v0, v0, Lc8/Qd;->mView:Lc8/uf;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lc8/Pd;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Lc8/uf;->internalSetVisibility(IZ)V

    .line 137
    return-void
.end method
