.class public Lc8/aSe;
.super Lc8/cWp;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bSe;-><init>(Lc8/fSe;Lc8/kTe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/bSe;

.field final synthetic val$editor:Lc8/kTe;

.field final synthetic val$this$0:Lc8/fSe;


# direct methods
.method constructor <init>(Lc8/bSe;Lc8/tWp;Lc8/fSe;Lc8/kTe;)V
    .locals 0
    .param p1, "this$1"    # Lc8/bSe;
    .param p2, "x0"    # Lc8/tWp;

    .prologue
    .line 432
    iput-object p1, p0, Lc8/aSe;->this$1:Lc8/bSe;

    iput-object p3, p0, Lc8/aSe;->val$this$0:Lc8/fSe;

    iput-object p4, p0, Lc8/aSe;->val$editor:Lc8/kTe;

    invoke-direct {p0, p2}, Lc8/cWp;-><init>(Lc8/tWp;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lc8/aSe;->this$1:Lc8/bSe;

    iget-object v1, v0, Lc8/bSe;->this$0:Lc8/fSe;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lc8/aSe;->this$1:Lc8/bSe;

    invoke-static {v0}, Lc8/bSe;->access$700(Lc8/bSe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    monitor-exit v1

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lc8/aSe;->this$1:Lc8/bSe;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc8/bSe;->access$702(Lc8/bSe;Z)Z

    .line 439
    iget-object v0, p0, Lc8/aSe;->this$1:Lc8/bSe;

    iget-object v0, v0, Lc8/bSe;->this$0:Lc8/fSe;

    invoke-static {v0}, Lc8/fSe;->access$808(Lc8/fSe;)I

    .line 440
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-super {p0}, Lc8/cWp;->close()V

    .line 442
    iget-object v0, p0, Lc8/aSe;->val$editor:Lc8/kTe;

    invoke-virtual {v0}, Lc8/kTe;->commit()V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
