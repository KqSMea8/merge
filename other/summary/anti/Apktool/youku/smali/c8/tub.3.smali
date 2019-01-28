.class public Lc8/tub;
.super Ljava/lang/Object;
.source "LocationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationProvider(Lc8/nVf;)Lc8/sub;
    .locals 1
    .param p0, "context"    # Lc8/nVf;

    .prologue
    .line 11
    new-instance v0, Lc8/pub;

    invoke-direct {v0, p0}, Lc8/pub;-><init>(Lc8/nVf;)V

    return-object v0
.end method
