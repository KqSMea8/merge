.class public interface abstract Lc8/kqd;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPullEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPull(Lc8/oqd;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<TV;>;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRelease(Lc8/oqd;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<TV;>;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation
.end method
