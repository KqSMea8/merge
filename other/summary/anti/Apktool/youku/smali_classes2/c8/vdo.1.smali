.class public Lc8/vdo;
.super Ljava/lang/Object;
.source "CircularProgressViewAdapter.java"

# interfaces
.implements Lc8/wdo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationReset()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 26
    return-void
.end method

.method public onProgressUpdate(F)V
    .locals 0
    .param p1, "currentProgress"    # F

    .prologue
    .line 11
    return-void
.end method

.method public onProgressUpdateEnd(F)V
    .locals 0
    .param p1, "currentProgress"    # F

    .prologue
    .line 16
    return-void
.end method
