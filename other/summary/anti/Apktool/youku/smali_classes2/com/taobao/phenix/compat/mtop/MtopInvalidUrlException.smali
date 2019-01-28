.class public Lcom/taobao/phenix/compat/mtop/MtopInvalidUrlException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "MtopInvalidUrlException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "extraCode"    # I

    .prologue
    .line 7
    const/4 v0, 0x0

    const-string/jumbo v1, "Invalid Url"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;ILjava/lang/Throwable;)V

    .line 8
    return-void
.end method
