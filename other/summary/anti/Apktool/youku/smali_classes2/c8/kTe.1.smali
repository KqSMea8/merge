.class public final Lc8/kTe;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lc8/lTe;

.field private hasErrors:Z

.field final synthetic this$0:Lc8/nTe;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lc8/nTe;Lc8/lTe;)V
    .locals 1
    .param p1, "this$0"    # Lc8/nTe;
    .param p2, "entry"    # Lc8/lTe;

    .prologue
    .line 832
    iput-object p1, p0, Lc8/kTe;->this$0:Lc8/nTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p2, p0, Lc8/kTe;->entry:Lc8/lTe;

    .line 834
    invoke-static {p2}, Lc8/lTe;->access$800(Lc8/lTe;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lc8/kTe;->written:[Z

    .line 835
    return-void

    .line 834
    :cond_0
    invoke-static {p1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/nTe;Lc8/lTe;Lc8/gTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/nTe;
    .param p2, "x1"    # Lc8/lTe;
    .param p3, "x2"    # Lc8/gTe;

    .prologue
    .line 826
    invoke-direct {p0, p1, p2}, Lc8/kTe;-><init>(Lc8/nTe;Lc8/lTe;)V

    return-void
.end method

.method static synthetic access$1700(Lc8/kTe;)Lc8/lTe;
    .locals 1
    .param p0, "x0"    # Lc8/kTe;

    .prologue
    .line 826
    iget-object v0, p0, Lc8/kTe;->entry:Lc8/lTe;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/kTe;)[Z
    .locals 1
    .param p0, "x0"    # Lc8/kTe;

    .prologue
    .line 826
    iget-object v0, p0, Lc8/kTe;->written:[Z

    return-object v0
.end method

.method static synthetic access$1902(Lc8/kTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/kTe;
    .param p1, "x1"    # Z

    .prologue
    .line 826
    iput-boolean p1, p0, Lc8/kTe;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v1, p0, Lc8/kTe;->this$0:Lc8/nTe;

    monitor-enter v1

    .line 911
    :try_start_0
    iget-object v0, p0, Lc8/kTe;->this$0:Lc8/nTe;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lc8/nTe;->access$2600(Lc8/nTe;Lc8/kTe;Z)V

    .line 912
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v1, p0, Lc8/kTe;->this$0:Lc8/nTe;

    monitor-enter v1

    .line 895
    :try_start_0
    iget-boolean v0, p0, Lc8/kTe;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lc8/kTe;->this$0:Lc8/nTe;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lc8/nTe;->access$2600(Lc8/nTe;Lc8/kTe;Z)V

    .line 897
    iget-object v0, p0, Lc8/kTe;->this$0:Lc8/nTe;

    iget-object v2, p0, Lc8/kTe;->entry:Lc8/lTe;

    invoke-static {v0, v2}, Lc8/nTe;->access$2700(Lc8/nTe;Lc8/lTe;)Z

    .line 901
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kTe;->committed:Z

    .line 902
    monitor-exit v1

    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lc8/kTe;->this$0:Lc8/nTe;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lc8/nTe;->access$2600(Lc8/nTe;Lc8/kTe;Z)V

    goto :goto_0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newSink(I)Lc8/tWp;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v3, p0, Lc8/kTe;->this$0:Lc8/nTe;

    monitor-enter v3

    .line 866
    :try_start_0
    iget-object v2, p0, Lc8/kTe;->entry:Lc8/lTe;

    invoke-static {v2}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 867
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 886
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 869
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc8/kTe;->entry:Lc8/lTe;

    invoke-static {v2}, Lc8/lTe;->access$800(Lc8/lTe;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 870
    iget-object v2, p0, Lc8/kTe;->written:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, p1

    .line 872
    :cond_1
    iget-object v2, p0, Lc8/kTe;->entry:Lc8/lTe;

    invoke-static {v2}, Lc8/lTe;->access$1400(Lc8/lTe;)[Ljava/io/File;

    move-result-object v2

    aget-object v0, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    iget-object v2, p0, Lc8/kTe;->this$0:Lc8/nTe;

    invoke-static {v2}, Lc8/nTe;->access$2400(Lc8/nTe;)Lc8/fVe;

    move-result-object v2

    invoke-interface {v2, v0}, Lc8/fVe;->sink(Ljava/io/File;)Lc8/tWp;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 879
    .local v1, "sink":Lc8/tWp;
    :try_start_3
    new-instance v2, Lc8/jTe;

    invoke-direct {v2, p0, v1}, Lc8/jTe;-><init>(Lc8/kTe;Lc8/tWp;)V

    monitor-exit v3

    .end local v1    # "sink":Lc8/tWp;
    :goto_0
    return-object v2

    .line 877
    :catch_0
    move-exception v2

    invoke-static {}, Lc8/nTe;->access$2500()Lc8/tWp;

    move-result-object v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
