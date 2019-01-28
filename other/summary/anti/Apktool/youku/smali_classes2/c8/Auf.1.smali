.class public interface abstract Lc8/Auf;
.super Ljava/lang/Object;
.source "Decoder.java"


# virtual methods
.method public abstract acceptInputType(ILc8/Yuf;Z)Z
.end method

.method public abstract canDecodeIncrementally(Lc8/Yuf;)Z
.end method

.method public abstract decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract detectMimeType([B)Lc8/Yuf;
.end method

.method public abstract isSupported(Lc8/Yuf;)Z
.end method

.method public abstract prepare(Landroid/content/Context;)V
.end method
