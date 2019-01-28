.class public Lc8/WYn;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XYn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lc8/XYn;


# direct methods
.method private constructor <init>(Lc8/XYn;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 858
    iput-object p1, p0, Lc8/WYn;->this$1:Lc8/XYn;

    .line 859
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lc8/XYn;Ljava/io/OutputStream;Lc8/VYn;)V
    .locals 0
    .param p1, "x0"    # Lc8/XYn;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lc8/VYn;

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lc8/WYn;-><init>(Lc8/XYn;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 880
    :try_start_0
    iget-object v0, p0, Lc8/WYn;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/WYn;->this$1:Lc8/XYn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/XYn;->access$2002(Lc8/XYn;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 888
    :try_start_0
    iget-object v0, p0, Lc8/WYn;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/WYn;->this$1:Lc8/XYn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/XYn;->access$2002(Lc8/XYn;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I

    .prologue
    .line 864
    :try_start_0
    iget-object v0, p0, Lc8/WYn;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/WYn;->this$1:Lc8/XYn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/XYn;->access$2002(Lc8/XYn;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 872
    :try_start_0
    iget-object v0, p0, Lc8/WYn;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/WYn;->this$1:Lc8/XYn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/XYn;->access$2002(Lc8/XYn;Z)Z

    goto :goto_0
.end method
