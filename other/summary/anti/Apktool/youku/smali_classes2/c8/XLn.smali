.class public Lc8/XLn;
.super Ljava/lang/Object;
.source "HttpDns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpByHttpDns(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Lc8/GOm;->getIpArrayByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, "dns":Ljava/lang/String;
    return-object v0
.end method
