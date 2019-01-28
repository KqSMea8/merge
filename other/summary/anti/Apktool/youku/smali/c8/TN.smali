.class public Lc8/TN;
.super Ljava/lang/Object;
.source "NetworkStat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkStat()Lc8/SN;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lc8/VN;->getInstance()Lc8/VN;

    move-result-object v0

    return-object v0
.end method
