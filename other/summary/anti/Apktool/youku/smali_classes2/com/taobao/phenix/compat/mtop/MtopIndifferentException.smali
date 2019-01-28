.class public Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "MtopIndifferentException.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "extraCode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;ILjava/lang/Throwable;)V

    .line 8
    return-void
.end method
