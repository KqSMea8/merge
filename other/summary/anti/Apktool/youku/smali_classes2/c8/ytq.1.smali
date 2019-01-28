.class public Lc8/ytq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ztq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ztq;


# direct methods
.method constructor <init>(Lc8/ztq;)V
    .locals 0

    .prologue
    .line 365
    .local p0, "this":Lc8/ytq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iput-object p1, p0, Lc8/ytq;->this$0:Lc8/ztq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    .line 368
    .local p0, "this":Lc8/ytq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    iget-boolean v0, v0, Lc8/ztq;->terminated:Z

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    iget-object v1, v0, Lc8/ztq;->producers:Lc8/ayq;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    iget-boolean v0, v0, Lc8/ztq;->terminated:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    iget-object v0, v0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v0}, Lc8/ayq;->terminate()V

    .line 372
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    iget-wide v2, v0, Lc8/ztq;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lc8/ztq;->producersVersion:J

    .line 373
    iget-object v0, p0, Lc8/ytq;->this$0:Lc8/ztq;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/ztq;->terminated:Z

    .line 375
    :cond_0
    monitor-exit v1

    .line 382
    :cond_1
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
