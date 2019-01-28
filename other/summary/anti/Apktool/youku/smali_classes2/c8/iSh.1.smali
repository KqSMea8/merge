.class public Lc8/iSh;
.super Lc8/cOp;
.source "MtopYoukuHaibaoAppconfigLoadResponse.java"


# instance fields
.field private data:Lc8/jSh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/cOp;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lc8/jSh;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lc8/iSh;->data:Lc8/jSh;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lc8/iSh;->getData()Lc8/jSh;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lc8/jSh;)V
    .locals 0
    .param p1, "data"    # Lc8/jSh;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/iSh;->data:Lc8/jSh;

    .line 35
    return-void
.end method
