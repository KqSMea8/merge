.class public Lc8/Sxb;
.super Lc8/dyb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelNode"
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
    .line 244
    .local p0, "this":Lc8/Sxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$CancelNode<TT;>;"
    invoke-direct {p0}, Lc8/dyb;-><init>()V

    return-void
.end method

.method static make(Lc8/Rxb;)Lc8/fyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Rxb",
            "<TT;>;)",
            "Lc8/fyb",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "action":Lc8/Rxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$CancelAction<TT;>;"
    new-instance v0, Lc8/Sxb;

    invoke-direct {v0}, Lc8/Sxb;-><init>()V

    invoke-virtual {v0, p0}, Lc8/Sxb;->setAction(Lc8/Hxb;)Lc8/fyb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flowToNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lc8/Sxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$CancelNode<TT;>;"
    .local p1, "priorResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lc8/Sxb;->getAction()Lc8/Hxb;

    move-result-object v0

    check-cast v0, Lc8/Rxb;

    .line 251
    .local v0, "action":Lc8/Rxb;
    invoke-virtual {v0, p1}, Lc8/Rxb;->cancel(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lc8/Sxb;->getContext()Lc8/Zxb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Zxb;->cancelFlow()Lc8/Zxb;

    .line 253
    invoke-virtual {p0}, Lc8/Sxb;->getContext()Lc8/Zxb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Zxb;->flowToFinal()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
