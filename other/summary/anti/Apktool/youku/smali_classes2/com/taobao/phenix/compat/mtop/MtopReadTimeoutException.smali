.class public Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "MtopReadTimeoutException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const/16 v0, 0xc8

    const-string/jumbo v1, "Read Stream Timeout"

    invoke-direct {p0, v0, v1}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;)V

    .line 11
    return-void
.end method
