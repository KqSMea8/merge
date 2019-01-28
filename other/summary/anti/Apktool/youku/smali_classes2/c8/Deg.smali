.class public Lc8/Deg;
.super Landroid/widget/VideoView;
.source "WXVideoView.java"

# interfaces
.implements Lc8/Ueg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ceg;,
        Lc8/Beg;
    }
.end annotation


# instance fields
.field private mVideoPauseListener:Lc8/Beg;

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    .local v0, "result":Z
    iget-object v1, p0, Lc8/Deg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lc8/Deg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 67
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 81
    iget-object v0, p0, Lc8/Deg;->mVideoPauseListener:Lc8/Beg;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Deg;->mVideoPauseListener:Lc8/Beg;

    invoke-interface {v0}, Lc8/Beg;->onPause()V

    .line 84
    :cond_0
    return-void
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Deg;->wxGesture:Lc8/Teg;

    .line 55
    return-void
.end method

.method public setOnVideoPauseListener(Lc8/Beg;)V
    .locals 0
    .param p1, "listener"    # Lc8/Beg;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/Deg;->mVideoPauseListener:Lc8/Beg;

    .line 59
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 73
    iget-object v0, p0, Lc8/Deg;->mVideoPauseListener:Lc8/Beg;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/Deg;->mVideoPauseListener:Lc8/Beg;

    invoke-interface {v0}, Lc8/Beg;->onStart()V

    .line 76
    :cond_0
    return-void
.end method
