.class public Lc8/zVe;
.super Ljava/lang/Object;
.source "SqliteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AVe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayCloseDbTask"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/AVe;


# direct methods
.method constructor <init>(Lc8/AVe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/AVe;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/zVe;->this$0:Lc8/AVe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lc8/zVe;->this$0:Lc8/AVe;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lc8/zVe;->this$0:Lc8/AVe;

    invoke-static {v0}, Lc8/AVe;->access$000(Lc8/AVe;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/zVe;->this$0:Lc8/AVe;

    invoke-static {v0}, Lc8/AVe;->access$100(Lc8/AVe;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/zVe;->this$0:Lc8/AVe;

    invoke-static {v0}, Lc8/AVe;->access$100(Lc8/AVe;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    iget-object v0, p0, Lc8/zVe;->this$0:Lc8/AVe;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/AVe;->access$102(Lc8/AVe;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
