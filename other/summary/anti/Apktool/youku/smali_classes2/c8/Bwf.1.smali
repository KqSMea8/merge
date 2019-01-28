.class public final Lc8/Bwf;
.super Lc8/XJ;
.source "TBNetwork4Phenix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cwf;->setupQualityChangedMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/XJ;-><init>()V

    return-void
.end method


# virtual methods
.method public detectNetSpeedSlow(D)Z
    .locals 3
    .param p1, "speed"    # D

    .prologue
    .line 46
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
