.class public Lc8/jTe;
.super Lc8/oTe;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kTe;->newSink(I)Lc8/tWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/kTe;


# direct methods
.method constructor <init>(Lc8/kTe;Lc8/tWp;)V
    .locals 0
    .param p1, "this$1"    # Lc8/kTe;
    .param p2, "delegate"    # Lc8/tWp;

    .prologue
    .line 879
    iput-object p1, p0, Lc8/jTe;->this$1:Lc8/kTe;

    invoke-direct {p0, p2}, Lc8/oTe;-><init>(Lc8/tWp;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 881
    iget-object v0, p0, Lc8/jTe;->this$1:Lc8/kTe;

    iget-object v1, v0, Lc8/kTe;->this$0:Lc8/nTe;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Lc8/jTe;->this$1:Lc8/kTe;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc8/kTe;->access$1902(Lc8/kTe;Z)Z

    .line 883
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
