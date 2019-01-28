.class public Lc8/gXo;
.super Landroid/widget/LinearLayout;
.source "RichTextView.java"

# interfaces
.implements Lc8/Ueg;


# instance fields
.field private mLayout:Landroid/text/Layout;

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget-object v1, p0, Lc8/gXo;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lc8/gXo;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc8/gXo;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    :try_start_0
    iget-object v1, p0, Lc8/gXo;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 53
    .local v0, "result":Z
    iget-object v1, p0, Lc8/gXo;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lc8/gXo;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 56
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/gXo;->wxGesture:Lc8/Teg;

    .line 62
    return-void
.end method

.method public setLayout(Landroid/text/Layout;)V
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/gXo;->mLayout:Landroid/text/Layout;

    if-ne v0, p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lc8/gXo;->mLayout:Landroid/text/Layout;

    .line 31
    invoke-virtual {p0}, Lc8/gXo;->invalidate()V

    .line 32
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lc8/gXo;->setBackgroundColor(I)V

    goto :goto_0
.end method
