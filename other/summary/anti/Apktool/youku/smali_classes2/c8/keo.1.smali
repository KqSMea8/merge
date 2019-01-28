.class public interface abstract Lc8/keo;
.super Ljava/lang/Object;
.source "BaseRefreshHeader.java"


# static fields
.field public static final STATE_DONE:I = 0x3

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_REFRESHING:I = 0x2

.field public static final STATE_RELEASE_TO_REFRESH:I = 0x1


# virtual methods
.method public abstract getRefreshingHeight()F
.end method

.method public abstract getState()I
.end method

.method public abstract getVisibleHeight()F
.end method

.method public abstract onMove(FF)V
.end method

.method public abstract refreshComplete()V
.end method

.method public abstract refreshComplete(Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract releaseAction()Z
.end method

.method public abstract setState(ILandroid/text/SpannableStringBuilder;)V
.end method

.method public abstract setVisibleHeight(F)V
.end method
