.class public Lcom/taobao/pexode/exception/DegradeNotAllowedException;
.super Lcom/taobao/pexode/exception/PexodeException;
.source "DegradeNotAllowedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/taobao/pexode/exception/PexodeException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
