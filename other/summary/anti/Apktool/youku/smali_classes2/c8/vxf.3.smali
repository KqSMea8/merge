.class public Lc8/vxf;
.super Lc8/txf;
.source "ProgressPhenixEvent.java"


# instance fields
.field private final mProgress:F


# direct methods
.method public constructor <init>(Lc8/nxf;F)V
    .locals 0
    .param p1, "t"    # Lc8/nxf;
    .param p2, "progress"    # F

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lc8/txf;-><init>(Lc8/nxf;)V

    .line 10
    iput p2, p0, Lc8/vxf;->mProgress:F

    .line 11
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lc8/vxf;->mProgress:F

    return v0
.end method
