.class public Lc8/lyb;
.super Lc8/dyb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/dyb",
        "<",
        "Ljava/lang/Void;",
        "TR;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc8/Hxb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hxb",
            "<",
            "Ljava/lang/Void;",
            "TR;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lc8/lyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$StartNode<TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<Ljava/lang/Void;TR;>;"
    invoke-direct {p0, p1}, Lc8/dyb;-><init>(Lc8/Hxb;)V

    .line 406
    return-void
.end method

.method static make(Ljava/lang/Object;)Lc8/dyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lc8/dyb",
            "<",
            "Ljava/lang/Void;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "r":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/lyb;

    new-instance v1, Lc8/kyb;

    invoke-direct {v1, p0}, Lc8/kyb;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lc8/lyb;-><init>(Lc8/Hxb;)V

    return-object v0
.end method
