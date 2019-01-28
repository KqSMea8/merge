.class public Lc8/Edg;
.super Ljava/lang/Object;
.source "TouchActivePseudoListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mIsConsumeOnTouch:Z

.field private mOnActivePseudoListener:Lc8/Cdg;


# direct methods
.method public constructor <init>(Lc8/Cdg;Z)V
    .locals 0
    .param p1, "l"    # Lc8/Cdg;
    .param p2, "consumeInTouch"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/Edg;->mOnActivePseudoListener:Lc8/Cdg;

    .line 33
    iput-boolean p2, p0, Lc8/Edg;->mIsConsumeOnTouch:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 39
    .local v0, "action":I
    iget-object v1, p0, Lc8/Edg;->mOnActivePseudoListener:Lc8/Cdg;

    if-eqz v1, :cond_1

    .line 40
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 41
    :cond_0
    iget-object v1, p0, Lc8/Edg;->mOnActivePseudoListener:Lc8/Cdg;

    invoke-interface {v1, v2}, Lc8/Cdg;->updateActivePseudo(Z)V

    .line 46
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lc8/Edg;->mIsConsumeOnTouch:Z

    return v1

    .line 42
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 43
    :cond_3
    iget-object v1, p0, Lc8/Edg;->mOnActivePseudoListener:Lc8/Cdg;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lc8/Cdg;->updateActivePseudo(Z)V

    goto :goto_0
.end method
