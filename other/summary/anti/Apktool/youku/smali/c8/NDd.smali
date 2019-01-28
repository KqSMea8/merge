.class public final Lc8/NDd;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ODd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/ODd;


# direct methods
.method private constructor <init>(Lc8/ODd;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lc8/NDd;->a:Lc8/ODd;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lc8/ODd;Ljava/io/OutputStream;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/NDd;-><init>(Lc8/ODd;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc8/NDd;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/NDd;->a:Lc8/ODd;

    invoke-static {v0}, Lc8/ODd;->c(Lc8/ODd;)Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc8/NDd;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/NDd;->a:Lc8/ODd;

    invoke-static {v0}, Lc8/ODd;->c(Lc8/ODd;)Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc8/NDd;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/NDd;->a:Lc8/ODd;

    invoke-static {v0}, Lc8/ODd;->c(Lc8/ODd;)Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc8/NDd;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/NDd;->a:Lc8/ODd;

    invoke-static {v0}, Lc8/ODd;->c(Lc8/ODd;)Z

    goto :goto_0
.end method
