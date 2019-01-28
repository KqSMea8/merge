.class public Lc8/EZf;
.super Lc8/zZf;
.source "CachedCSSLayout.java"


# instance fields
.field public parentMaxWidth:F

.field public requestedHeight:F

.field public requestedWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    .line 13
    invoke-direct {p0}, Lc8/zZf;-><init>()V

    .line 15
    iput v0, p0, Lc8/EZf;->requestedWidth:F

    .line 16
    iput v0, p0, Lc8/EZf;->requestedHeight:F

    .line 17
    iput v0, p0, Lc8/EZf;->parentMaxWidth:F

    return-void
.end method
