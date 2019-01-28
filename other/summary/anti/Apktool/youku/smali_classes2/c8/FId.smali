.class public final Lc8/FId;
.super Lc8/GId;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GId;->create(Lc8/xId;Ljava/io/File;)Lc8/GId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lc8/xId;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lc8/xId;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lc8/FId;->val$contentType:Lc8/xId;

    iput-object p2, p0, Lc8/FId;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lc8/GId;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lc8/FId;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/xId;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/FId;->val$contentType:Lc8/xId;

    return-object v0
.end method

.method public writeTo(Lc8/zJd;)V
    .locals 2
    .param p1, "sink"    # Lc8/zJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "source":Lc8/MJd;
    :try_start_0
    iget-object v1, p0, Lc8/FId;->val$file:Ljava/io/File;

    invoke-static {v1}, Lc8/EJd;->source(Ljava/io/File;)Lc8/MJd;

    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Lc8/zJd;->writeAll(Lc8/MJd;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v0}, Lc8/LId;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc8/LId;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
