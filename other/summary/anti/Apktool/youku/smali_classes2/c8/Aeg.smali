.class public Lc8/Aeg;
.super Landroid/view/View;
.source "WXTextView.java"

# interfaces
.implements Lc8/Ueg;
.implements Lc8/aeg;
.implements Lc8/beg;
.implements Lc8/deg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lc8/aeg",
        "<",
        "Lc8/qcg;",
        ">;",
        "Lc8/beg",
        "<",
        "Lc8/qcg;",
        ">;",
        "Lc8/deg;",
        "Lc8/Ueg;"
    }
.end annotation


# instance fields
.field private mIsLabelSet:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/qcg;",
            ">;"
        }
    .end annotation
.end field

.field private textLayout:Landroid/text/Layout;

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Aeg;->mIsLabelSet:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getComponent()Lc8/qcg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lc8/Aeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Aeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qcg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getComponent()Lc8/tbg;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lc8/Aeg;->getComponent()Lc8/qcg;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Aeg;->textLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/Aeg;->textLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public holdComponent(Lc8/qcg;)V
    .locals 1
    .param p1, "component"    # Lc8/qcg;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Aeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method

.method public bridge synthetic holdComponent(Lc8/tbg;)V
    .locals 0
    .param p1, "x0"    # Lc8/tbg;

    .prologue
    .line 38
    check-cast p1, Lc8/qcg;

    .end local p1    # "x0":Lc8/tbg;
    invoke-virtual {p0, p1}, Lc8/Aeg;->holdComponent(Lc8/qcg;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    invoke-virtual {p0}, Lc8/Aeg;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    .line 55
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lc8/Aeg;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc8/Aeg;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 65
    .local v0, "result":Z
    iget-object v1, p0, Lc8/Aeg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lc8/Aeg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 68
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/Aeg;->wxGesture:Lc8/Teg;

    .line 74
    return-void
.end method

.method public setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Aeg;->mIsLabelSet:Z

    .line 101
    invoke-virtual {p0, p1}, Lc8/Aeg;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Aeg;->mIsLabelSet:Z

    .line 104
    iget-object v0, p0, Lc8/Aeg;->textLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lc8/Aeg;->textLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Aeg;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/Aeg;->textLayout:Landroid/text/Layout;

    .line 87
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lc8/Aeg;->mIsLabelSet:Z

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Aeg;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    iget-object v1, p0, Lc8/Aeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lc8/Aeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qcg;

    .line 92
    .local v0, "wxText":Lc8/qcg;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lc8/qcg;->readyToRender()V

    .line 96
    .end local v0    # "wxText":Lc8/qcg;
    :cond_1
    return-void
.end method
