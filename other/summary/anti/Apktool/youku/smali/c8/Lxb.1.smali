.class public abstract Lc8/Lxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Branch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    .local p0, "this":Lc8/Lxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Branch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createWork(Ljava/lang/Object;)Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/nyb",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lc8/Lxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Branch<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lc8/nyb;->make(Ljava/lang/Object;)Lc8/nyb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nyb;->runOnNewThread()Lc8/nyb;

    move-result-object v0

    return-object v0
.end method
