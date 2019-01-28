.class public Lc8/iyb;
.super Lc8/dyb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/dyb",
        "<TT;TR;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc8/Hxb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hxb",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lc8/iyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$NextNode<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TT;TR;>;"
    invoke-direct {p0, p1}, Lc8/dyb;-><init>(Lc8/Hxb;)V

    .line 397
    return-void
.end method

.method static make(Lc8/Hxb;)Lc8/dyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TT;TR;>;)",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TT;TR;>;"
    new-instance v0, Lc8/iyb;

    invoke-direct {v0, p0}, Lc8/iyb;-><init>(Lc8/Hxb;)V

    return-object v0
.end method
