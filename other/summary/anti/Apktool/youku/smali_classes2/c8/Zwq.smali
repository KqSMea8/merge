.class public Lc8/Zwq;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bxq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bxq;

.field final synthetic val$mas:Lc8/UBq;


# direct methods
.method constructor <init>(Lc8/bxq;Lc8/UBq;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lc8/Zwq;->this$0:Lc8/bxq;

    iput-object p2, p0, Lc8/Zwq;->val$mas:Lc8/UBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lc8/Zwq;->this$0:Lc8/bxq;

    iget-object v0, v0, Lc8/bxq;->tasks:Lc8/SBq;

    iget-object v1, p0, Lc8/Zwq;->val$mas:Lc8/UBq;

    invoke-virtual {v0, v1}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 130
    return-void
.end method
