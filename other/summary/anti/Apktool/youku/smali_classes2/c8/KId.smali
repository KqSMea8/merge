.class public abstract Lc8/KId;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v0

    invoke-interface {v0}, Lc8/AJd;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v0

    invoke-static {v0}, Lc8/LId;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    return-void
.end method

.method public abstract source()Lc8/AJd;
.end method
