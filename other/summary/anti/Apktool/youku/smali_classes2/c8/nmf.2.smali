.class public Lc8/nmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/Amf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x2710

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x2710

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    return v0
.end method
