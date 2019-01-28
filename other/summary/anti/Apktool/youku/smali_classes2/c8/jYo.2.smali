.class public interface abstract Lc8/jYo;
.super Ljava/lang/Object;
.source "BaseRefreshHeader.java"


# static fields
.field public static final STATE_DONE:I = 0x4

.field public static final STATE_FULLSCREEN:I = 0x3

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_REFRESHING:I = 0x2

.field public static final STATE_RELEASE_TO_REFRESH:I = 0x1


# virtual methods
.method public abstract getInitHeight()I
.end method

.method public abstract getRefreshingHeight()I
.end method

.method public abstract getState()I
.end method

.method public abstract getVisibleHeight()I
.end method

.method public abstract onMove(F)V
.end method

.method public abstract refreshComplete()V
.end method

.method public abstract refreshComplete(Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract releaseAction()Z
.end method

.method public abstract setState(ILandroid/text/SpannableStringBuilder;)V
.end method

.method public abstract setVisibleHeight(I)V
.end method
