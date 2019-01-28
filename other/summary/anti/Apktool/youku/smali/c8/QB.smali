.class public Lc8/QB;
.super Ljava/lang/Object;
.source "WVUpdatingInfo.java"


# instance fields
.field private fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromType"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lc8/QB;->fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 12
    iput-object p2, p0, Lc8/QB;->version:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getFromType()Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lc8/QB;->fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/QB;->version:Ljava/lang/String;

    return-object v0
.end method
