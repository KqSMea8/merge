.class public Lc8/sK;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tK;->request(Lc8/eK;Lc8/VI;)Lc8/ZJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tK;

.field final synthetic val$cb:Lc8/VI;

.field final synthetic val$req:Lc8/eK;

.field final synthetic val$rs:Lanet/channel/statist/RequestStatistic;


# direct methods
.method constructor <init>(Lc8/tK;Lc8/eK;Lc8/VI;Lanet/channel/statist/RequestStatistic;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lc8/sK;->this$0:Lc8/tK;

    iput-object p2, p0, Lc8/sK;->val$req:Lc8/eK;

    iput-object p3, p0, Lc8/sK;->val$cb:Lc8/VI;

    iput-object p4, p0, Lc8/sK;->val$rs:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lc8/sK;->val$req:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lc8/sK;->val$req:Lc8/eK;

    iget-object v1, v1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v1, Lanet/channel/statist/RequestStatistic;->requestStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 138
    iget-object v0, p0, Lc8/sK;->val$req:Lc8/eK;

    new-instance v1, Lc8/rK;

    invoke-direct {v1, p0}, Lc8/rK;-><init>(Lc8/sK;)V

    invoke-static {v0, v1}, Lc8/pK;->connect(Lc8/eK;Lc8/VI;)V

    .line 165
    return-void
.end method
