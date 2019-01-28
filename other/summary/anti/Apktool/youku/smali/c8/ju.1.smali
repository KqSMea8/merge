.class public final Lc8/ju;
.super Lc8/lu;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0}, Lc8/lu;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 1131
    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1126
    const/4 v0, 0x1

    return v0
.end method
