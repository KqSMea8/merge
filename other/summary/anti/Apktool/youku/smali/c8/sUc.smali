.class public Lc8/sUc;
.super Ljava/lang/Object;
.source "UmidtokenInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rUc;
    }
.end annotation


# static fields
.field static a:Lc8/hUc;

.field static b:Landroid/os/Handler;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lc8/sUc;->a:Lc8/hUc;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lc8/sUc;->b:Landroid/os/Handler;

    sput-object v1, Lc8/sUc;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUmidtoken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sUc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static setUmidtoken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sput-object p1, Lc8/sUc;->c:Ljava/lang/String;

    invoke-static {p1}, Lc8/TFd;->a(Ljava/lang/String;)V

    sget-object v0, Lc8/sUc;->a:Lc8/hUc;

    if-nez v0, :cond_0

    new-instance v0, Lc8/rUc;

    invoke-direct {v0}, Lc8/rUc;-><init>()V

    new-instance v1, Lc8/hUc;

    invoke-direct {v1, p0}, Lc8/hUc;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc8/sUc;->a:Lc8/hUc;

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v2, Lc8/sUc;->a:Lc8/hUc;

    invoke-virtual {v2, v1}, Lc8/hUc;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    sget-object v1, Lc8/sUc;->a:Lc8/hUc;

    invoke-virtual {v1, v0}, Lc8/hUc;->setLocationListener(Lc8/jUc;)V

    sget-object v0, Lc8/sUc;->a:Lc8/hUc;

    invoke-virtual {v0}, Lc8/hUc;->startLocation()V

    sget-object v0, Lc8/sUc;->b:Landroid/os/Handler;

    new-instance v1, Lc8/qUc;

    invoke-direct {v1}, Lc8/qUc;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UmidListener"

    const-string/jumbo v2, "setUmidtoken"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
