.class public Lc8/dlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->lift(Lc8/Mlq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$onLift:Lc8/Mlq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/Mlq;)V
    .locals 0

    .prologue
    .line 1563
    iput-object p1, p0, Lc8/dlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/dlq;->val$onLift:Lc8/Mlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 4
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1567
    :try_start_0
    iget-object v3, p0, Lc8/dlq;->val$onLift:Lc8/Mlq;

    invoke-static {v3}, Lc8/WAq;->onCompletableLift(Lc8/Mlq;)Lc8/Mlq;

    move-result-object v1

    .line 1568
    .local v1, "onLiftDecorated":Lc8/Mlq;
    invoke-interface {v1, p1}, Lc8/Mlq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Nlq;

    .line 1570
    .local v2, "sw":Lc8/Nlq;
    iget-object v3, p0, Lc8/dlq;->this$0:Lc8/Plq;

    invoke-virtual {v3, v2}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1575
    return-void

    .line 1571
    .end local v1    # "onLiftDecorated":Lc8/Mlq;
    .end local v2    # "sw":Lc8/Nlq;
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1573
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1574
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/Plq;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1563
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/dlq;->call(Lc8/Nlq;)V

    return-void
.end method
