.class public Lc8/uq;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Lc8/vq;


# direct methods
.method constructor <init>(Lc8/vq;)V
    .locals 1
    .param p1, "this$0"    # Lc8/vq;

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object p1, p0, Lc8/uq;->this$0:Lc8/vq;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 121
    iput-boolean v0, p0, Lc8/uq;->mProxyStarted:Z

    .line 122
    iput v0, p0, Lc8/uq;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget v0, p0, Lc8/uq;->mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/uq;->mProxyEndCount:I

    iget-object v1, p0, Lc8/uq;->this$0:Lc8/vq;

    iget-object v1, v1, Lc8/vq;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lc8/uq;->this$0:Lc8/vq;

    iget-object v0, v0, Lc8/vq;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/uq;->this$0:Lc8/vq;

    iget-object v0, v0, Lc8/vq;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lc8/uq;->onEnd()V

    .line 149
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    iget-boolean v0, p0, Lc8/uq;->mProxyStarted:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uq;->mProxyStarted:Z

    .line 130
    iget-object v0, p0, Lc8/uq;->this$0:Lc8/vq;

    iget-object v0, v0, Lc8/vq;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lc8/uq;->this$0:Lc8/vq;

    iget-object v0, v0, Lc8/vq;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_0
.end method

.method onEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lc8/uq;->mProxyEndCount:I

    .line 137
    iput-boolean v0, p0, Lc8/uq;->mProxyStarted:Z

    .line 138
    iget-object v0, p0, Lc8/uq;->this$0:Lc8/vq;

    invoke-virtual {v0}, Lc8/vq;->onAnimationsEnded()V

    .line 139
    return-void
.end method
