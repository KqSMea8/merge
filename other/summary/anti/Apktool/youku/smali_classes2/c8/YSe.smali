.class public final Lc8/YSe;
.super Lc8/ZSe;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZSe;->create(Lc8/MSe;Ljava/io/File;)Lc8/ZSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lc8/MSe;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lc8/MSe;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lc8/YSe;->val$contentType:Lc8/MSe;

    iput-object p2, p0, Lc8/YSe;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lc8/ZSe;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lc8/YSe;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lc8/YSe;->val$contentType:Lc8/MSe;

    return-object v0
.end method

.method public writeTo(Lc8/ZVp;)V
    .locals 2
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "source":Lc8/uWp;
    :try_start_0
    iget-object v1, p0, Lc8/YSe;->val$file:Ljava/io/File;

    invoke-static {v1}, Lc8/lWp;->source(Ljava/io/File;)Lc8/uWp;

    move-result-object v0

    .line 118
    invoke-interface {p1, v0}, Lc8/ZVp;->writeAll(Lc8/uWp;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
