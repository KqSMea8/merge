.class public final Lc8/XYn;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WYn;
    }
.end annotation


# instance fields
.field private final entry:Lc8/YYn;

.field private hasErrors:Z

.field final synthetic this$0:Lc8/aZn;


# direct methods
.method private constructor <init>(Lc8/aZn;Lc8/YYn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/aZn;
    .param p2, "entry"    # Lc8/YYn;

    .prologue
    .line 778
    iput-object p1, p0, Lc8/XYn;->this$0:Lc8/aZn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lc8/XYn;->entry:Lc8/YYn;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lc8/aZn;Lc8/YYn;Lc8/VYn;)V
    .locals 0
    .param p1, "x0"    # Lc8/aZn;
    .param p2, "x1"    # Lc8/YYn;
    .param p3, "x2"    # Lc8/VYn;

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lc8/XYn;-><init>(Lc8/aZn;Lc8/YYn;)V

    return-void
.end method

.method static synthetic access$1400(Lc8/XYn;)Lc8/YYn;
    .locals 1
    .param p0, "x0"    # Lc8/XYn;

    .prologue
    .line 774
    iget-object v0, p0, Lc8/XYn;->entry:Lc8/YYn;

    return-object v0
.end method

.method static synthetic access$2002(Lc8/XYn;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/XYn;
    .param p1, "x1"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lc8/XYn;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lc8/XYn;->this$0:Lc8/aZn;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc8/aZn;->access$1900(Lc8/aZn;Lc8/XYn;Z)V

    .line 855
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lc8/XYn;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lc8/XYn;->this$0:Lc8/aZn;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc8/aZn;->access$1900(Lc8/aZn;Lc8/XYn;Z)V

    .line 843
    iget-object v0, p0, Lc8/XYn;->this$0:Lc8/aZn;

    iget-object v1, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-static {v1}, Lc8/YYn;->access$1100(Lc8/YYn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/aZn;->remove(Ljava/lang/String;)Z

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lc8/XYn;->this$0:Lc8/aZn;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lc8/aZn;->access$1900(Lc8/aZn;Lc8/XYn;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lc8/XYn;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 804
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/aZn;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v1, p0, Lc8/XYn;->this$0:Lc8/aZn;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-static {v0}, Lc8/YYn;->access$700(Lc8/YYn;)Lc8/XYn;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 791
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-static {v0}, Lc8/YYn;->access$600(Lc8/YYn;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    const/4 v0, 0x0

    monitor-exit v1

    .line 794
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-virtual {v2, p1}, Lc8/YYn;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lc8/XYn;->this$0:Lc8/aZn;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-static {v0}, Lc8/YYn;->access$700(Lc8/YYn;)Lc8/XYn;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 819
    :cond_0
    :try_start_1
    new-instance v0, Lc8/WYn;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lc8/XYn;->entry:Lc8/YYn;

    invoke-virtual {v3, p1}, Lc8/YYn;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lc8/WYn;-><init>(Lc8/XYn;Ljava/io/OutputStream;Lc8/VYn;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lc8/XYn;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lc8/aZn;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 832
    invoke-static {v1}, Lc8/aZn;->closeQuietly(Ljava/io/Closeable;)V

    .line 833
    return-void

    .line 832
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lc8/aZn;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
