.class public Lcom/taobao/phenix/loader/network/IncompleteResponseException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "IncompleteResponseException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const/16 v0, 0xc8

    const-string/jumbo v1, "Incomplete Response"

    invoke-direct {p0, v0, v1}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;)V

    .line 12
    return-void
.end method
