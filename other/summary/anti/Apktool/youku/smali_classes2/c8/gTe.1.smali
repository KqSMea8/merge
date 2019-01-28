.class public Lc8/gTe;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nTe;


# direct methods
.method constructor <init>(Lc8/nTe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nTe;

    .prologue
    .line 168
    iput-object p1, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lc8/gTe;->this$0:Lc8/nTe;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v3, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-static {v3}, Lc8/nTe;->access$000(Lc8/nTe;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-static {v3}, Lc8/nTe;->access$100(Lc8/nTe;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$200(Lc8/nTe;)V

    .line 176
    iget-object v1, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$300(Lc8/nTe;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lc8/gTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$400(Lc8/nTe;)V

    .line 178
    iget-object v1, p0, Lc8/gTe;->this$0:Lc8/nTe;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lc8/nTe;->access$502(Lc8/nTe;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
