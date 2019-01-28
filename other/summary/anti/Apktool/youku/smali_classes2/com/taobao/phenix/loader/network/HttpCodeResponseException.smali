.class public Lcom/taobao/phenix/loader/network/HttpCodeResponseException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "HttpCodeResponseException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpCode"    # I

    .prologue
    .line 6
    const-string/jumbo v0, "Failed Http Code"

    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;)V

    .line 7
    return-void
.end method
