.class public abstract Lc8/gyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JudgeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 649
    .local p0, "this":Lc8/gyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lc8/gyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeAction<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected abstract judge(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
