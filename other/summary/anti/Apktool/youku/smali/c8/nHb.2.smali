.class public Lc8/nHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mHb;
    }
.end annotation


# static fields
.field public static final CHECK_GROUP_NAME:Ljava/lang/String; = "group0"

.field public static final MD5_SALT:Ljava/lang/String; = "ALITRADE20160628"

.field public static final SIGN_KEY:Ljava/lang/String; = "sign"

.field public static final SP_CONFIG_NAME:Ljava/lang/String; = "aliTradeConfigSP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 4

    sget-object v0, Lc8/mHb;->a:[I

    sget-object v1, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "https://nbsdk-baichuan.alicdn.com/%s/%s/%s/meta.htm?plat=android"

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "1.0.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "http://nbsdk-baichuan.taobao.com/%s/%s/%s/meta.htm?plat=android"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "http://100.69.205.47/%s/%s/%s/meta.htm?plat=android"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
