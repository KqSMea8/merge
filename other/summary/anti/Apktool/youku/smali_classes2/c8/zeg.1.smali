.class public Lc8/zeg;
.super Lc8/Vw;
.source "WXSwitchView.java"

# interfaces
.implements Lc8/Ueg;


# instance fields
.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lc8/Vw;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/zeg;->setShowText(Z)V

    .line 36
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lc8/zeg;->setGravity(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lc8/Vw;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 47
    .local v0, "result":Z
    iget-object v1, p0, Lc8/zeg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lc8/zeg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 50
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/zeg;->wxGesture:Lc8/Teg;

    .line 42
    return-void
.end method
