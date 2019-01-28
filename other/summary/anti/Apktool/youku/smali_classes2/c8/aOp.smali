.class public Lc8/aOp;
.super Lc8/cOp;
.source "MtopSysNewDeviceIdResponse.java"


# instance fields
.field private data:Lc8/bOp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/cOp;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lc8/bOp;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/aOp;->data:Lc8/bOp;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lc8/aOp;->getData()Lc8/bOp;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lc8/bOp;)V
    .locals 0
    .param p1, "data"    # Lc8/bOp;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/aOp;->data:Lc8/bOp;

    .line 29
    return-void
.end method
