.class public Lc8/BB;
.super Ljava/lang/Object;
.source "WVAppParams.java"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appTag:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public ttid:Ljava/lang/String;

.field public ucLibDir:Ljava/lang/String;

.field public ucsdkappkeySec:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lc8/BB;->ucsdkappkeySec:[Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lc8/BB;->ucLibDir:Ljava/lang/String;

    return-void
.end method
