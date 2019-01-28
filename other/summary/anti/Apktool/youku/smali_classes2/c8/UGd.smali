.class public Lc8/UGd;
.super Ljava/lang/Object;
.source "MzTelephoneManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 18
    const-string/jumbo v3, "android.telephony.MzTelephonyManager"

    invoke-static {v3}, Lc8/XGd;->forName(Ljava/lang/String;)Lc8/XGd;

    move-result-object v3

    const-string/jumbo v4, "getDeviceId"

    new-array v5, v6, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v3, v4, v5}, Lc8/XGd;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/aHd;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v3, v4}, Lc8/aHd;->invokeStatic([Ljava/lang/Object;)Lc8/bHd;

    move-result-object v1

    .line 21
    .local v1, "result":Lc8/bHd;, "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult<Ljava/lang/String;>;"
    iget-boolean v3, v1, Lc8/bHd;->ok:Z

    if-eqz v3, :cond_0

    .line 22
    iget-object v0, v1, Lc8/bHd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 27
    .local v0, "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 24
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    goto :goto_0
.end method
