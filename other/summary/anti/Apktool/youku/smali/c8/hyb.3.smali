.class public Lc8/hyb;
.super Lc8/dyb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JudgeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/dyb",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    .local p0, "this":Lc8/hyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeNode<TT;>;"
    invoke-direct {p0}, Lc8/dyb;-><init>()V

    return-void
.end method

.method static make(Lc8/gyb;)Lc8/fyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/gyb",
            "<TT;>;)",
            "Lc8/fyb",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "action":Lc8/gyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeAction<TT;>;"
    new-instance v0, Lc8/hyb;

    invoke-direct {v0}, Lc8/hyb;-><init>()V

    invoke-virtual {v0, p0}, Lc8/hyb;->setAction(Lc8/Hxb;)Lc8/fyb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flowToNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lc8/hyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeNode<TT;>;"
    .local p1, "priorResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lc8/hyb;->getAction()Lc8/Hxb;

    move-result-object v0

    check-cast v0, Lc8/gyb;

    .line 267
    .local v0, "judgeAction":Lc8/gyb;
    invoke-virtual {v0, p1}, Lc8/gyb;->judge(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-super {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lc8/hyb;->findLoopNode()Lc8/fyb;

    move-result-object v1

    .line 271
    .local v1, "loopNode":Lc8/fyb;
    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v1}, Lc8/fyb;->prior()Lc8/fyb;

    move-result-object v2

    invoke-interface {v2}, Lc8/fyb;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/fyb;->scheduleFlow(Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v2, p0, Lc8/hyb;->context:Lc8/Zxb;

    invoke-virtual {v2}, Lc8/Zxb;->flowToFinal()V

    goto :goto_0
.end method
