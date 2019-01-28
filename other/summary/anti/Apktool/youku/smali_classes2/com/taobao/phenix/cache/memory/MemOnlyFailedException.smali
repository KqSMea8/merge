.class public Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;
.super Ljava/lang/Exception;
.source "MemOnlyFailedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "no memory cache , MemCache cannot conduct final result at memOnly=true"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
