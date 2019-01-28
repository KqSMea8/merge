.class public Lc8/pxf;
.super Lc8/txf;
.source "FailPhenixEvent.java"


# instance fields
.field resultCode:I


# direct methods
.method public constructor <init>(Lc8/nxf;)V
    .locals 0
    .param p1, "t"    # Lc8/nxf;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lc8/txf;-><init>(Lc8/nxf;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lc8/pxf;->resultCode:I

    return v0
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 20
    iput p1, p0, Lc8/pxf;->resultCode:I

    .line 21
    return-void
.end method
