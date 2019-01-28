.class public Lc8/spf;
.super Ljava/lang/Object;
.source "PartnerAppInfoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartnerAppInfo"
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field public appId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lc8/spf;->appId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lc8/spf;->packageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/spf;->appId:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/spf;->packageName:Ljava/lang/String;

    .line 60
    return-void
.end method
