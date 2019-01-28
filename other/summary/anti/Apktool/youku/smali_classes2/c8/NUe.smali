.class public final Lc8/NUe;
.super Lc8/dTe;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lc8/dTe;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lc8/aWp;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    return-object v0
.end method
