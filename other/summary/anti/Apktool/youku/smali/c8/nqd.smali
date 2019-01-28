.class public final Lc8/nqd;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SmoothScrollRunnable"
.end annotation


# static fields
.field static final ANIMATION_DELAY:I = 0xa


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lc8/oqd;


# direct methods
.method public constructor <init>(Lc8/oqd;IIJ)V
    .locals 2
    .param p1, "this$0"    # Lc8/oqd;
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J

    .prologue
    .line 1139
    .local p0, "this":Lc8/nqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    iput-object p1, p0, Lc8/nqd;->this$0:Lc8/oqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nqd;->mContinueRunning:Z

    .line 1136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/nqd;->mStartTime:J

    .line 1137
    const/4 v0, -0x1

    iput v0, p0, Lc8/nqd;->mCurrentY:I

    .line 1140
    iput p2, p0, Lc8/nqd;->mScrollFromY:I

    .line 1141
    iput p3, p0, Lc8/nqd;->mScrollToY:I

    .line 1142
    invoke-static {p1}, Lc8/oqd;->access$000(Lc8/oqd;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lc8/nqd;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1143
    iput-wide p4, p0, Lc8/nqd;->mDuration:J

    .line 1144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lc8/nqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v8, 0x3e8

    .line 1153
    iget-wide v4, p0, Lc8/nqd;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/nqd;->mStartTime:J

    .line 1172
    :goto_0
    iget-boolean v1, p0, Lc8/nqd;->mContinueRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/nqd;->mScrollToY:I

    iget v4, p0, Lc8/nqd;->mCurrentY:I

    if-eq v1, v4, :cond_0

    .line 1176
    iget-object v1, p0, Lc8/nqd;->this$0:Lc8/oqd;

    const-wide/16 v4, 0xa

    invoke-virtual {v1, p0, v4, v5}, Lc8/oqd;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1179
    :cond_0
    return-void

    .line 1162
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/nqd;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lc8/nqd;->mDuration:J

    div-long v2, v4, v6

    .line 1163
    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1165
    iget v1, p0, Lc8/nqd;->mScrollFromY:I

    iget v4, p0, Lc8/nqd;->mScrollToY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lc8/nqd;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 1166
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    .line 1165
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1167
    .local v0, "deltaY":I
    iget v1, p0, Lc8/nqd;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lc8/nqd;->mCurrentY:I

    .line 1168
    iget-object v1, p0, Lc8/nqd;->this$0:Lc8/oqd;

    iget v4, p0, Lc8/nqd;->mCurrentY:I

    invoke-virtual {v1, v4}, Lc8/oqd;->setHeaderScroll(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1182
    .local p0, "this":Lc8/nqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nqd;->mContinueRunning:Z

    .line 1183
    iget-object v0, p0, Lc8/nqd;->this$0:Lc8/oqd;

    invoke-virtual {v0, p0}, Lc8/oqd;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1184
    return-void
.end method
