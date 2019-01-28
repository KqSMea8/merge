.class public Lc8/peg;
.super Landroid/widget/EditText;
.source "WXEditText.java"

# interfaces
.implements Lc8/Ueg;


# instance fields
.field private mAllowDisableMovement:Z

.field private mLines:I

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lc8/peg;->mLines:I

    .line 38
    iput-boolean v0, p0, Lc8/peg;->mAllowDisableMovement:Z

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, v2}, Lc8/peg;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, v2}, Lc8/peg;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 88
    invoke-virtual {p0}, Lc8/peg;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 90
    .local v0, "contentH":I
    iget-boolean v1, p0, Lc8/peg;->mAllowDisableMovement:Z

    if-eqz v1, :cond_0

    if-ge p2, v0, :cond_0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/peg;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lc8/peg;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/peg;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 63
    .local v1, "result":Z
    iget-object v2, p0, Lc8/peg;->wxGesture:Lc8/Teg;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lc8/peg;->wxGesture:Lc8/Teg;

    invoke-virtual {v2, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lc8/peg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 68
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 82
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 71
    :pswitch_1
    iget v2, p0, Lc8/peg;->mLines:I

    invoke-virtual {p0}, Lc8/peg;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 99
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/peg;->wxGesture:Lc8/Teg;

    .line 52
    return-void
.end method

.method public setAllowDisableMovement(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lc8/peg;->mAllowDisableMovement:Z

    .line 104
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/EditText;->setLines(I)V

    .line 57
    iput p1, p0, Lc8/peg;->mLines:I

    .line 58
    return-void
.end method
