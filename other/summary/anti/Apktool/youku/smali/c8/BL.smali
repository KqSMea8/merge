.class public Lc8/BL;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComparableFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/BL",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lc8/CL;


# direct methods
.method public constructor <init>(Lc8/CL;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/BL;, "Lanet/channel/thread/PriorityExecutor$ComparableFutureTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lc8/BL;->this$0:Lc8/CL;

    .line 43
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 44
    iput-object p2, p0, Lc8/BL;->object:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Lc8/CL;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/BL;, "Lanet/channel/thread/PriorityExecutor$ComparableFutureTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Lc8/BL;->this$0:Lc8/CL;

    .line 38
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    iput-object p2, p0, Lc8/BL;->object:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/BL;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/BL",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/BL;, "Lanet/channel/thread/PriorityExecutor$ComparableFutureTask<TV;>;"
    .local p1, "o":Lc8/BL;, "Lanet/channel/thread/PriorityExecutor$ComparableFutureTask<TV;>;"
    const/4 v0, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    if-nez p1, :cond_2

    .line 54
    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lc8/BL;->object:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lc8/BL;->object:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lc8/BL;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lc8/BL;->object:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lc8/BL;->object:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Comparable;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lc8/BL;->object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lc8/BL;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/BL;, "Lanet/channel/thread/PriorityExecutor$ComparableFutureTask<TV;>;"
    check-cast p1, Lc8/BL;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/BL;->compareTo(Lc8/BL;)I

    move-result v0

    return v0
.end method
