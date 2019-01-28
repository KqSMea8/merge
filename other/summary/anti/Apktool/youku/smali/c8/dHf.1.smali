.class public Lc8/dHf;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static s_device:Lc8/cHf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lc8/dHf;->s_device:Lc8/cHf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDevice(Landroid/content/Context;)Lc8/cHf;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    sget-object v1, Lc8/dHf;->s_device:Lc8/cHf;

    if-eqz v1, :cond_0

    .line 20
    sget-object v0, Lc8/dHf;->s_device:Lc8/cHf;

    .line 27
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lc8/cHf;

    invoke-direct {v0}, Lc8/cHf;-><init>()V

    .line 23
    .local v0, "lDevice":Lc8/cHf;
    invoke-static {p0}, Lc8/TBb;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/cHf;->setImei(Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lc8/TBb;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/cHf;->setImsi(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/cHf;->setUdid(Ljava/lang/String;)V

    .line 27
    sput-object v0, Lc8/dHf;->s_device:Lc8/cHf;

    goto :goto_0
.end method
