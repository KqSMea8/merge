.class public Lc8/jyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParallelMerge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lc8/jyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ParallelMerge<TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lc8/jyb;->results:Ljava/util/List;

    .line 343
    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lc8/jyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ParallelMerge<TR;>;"
    iget-object v0, p0, Lc8/jyb;->results:Ljava/util/List;

    return-object v0
.end method
