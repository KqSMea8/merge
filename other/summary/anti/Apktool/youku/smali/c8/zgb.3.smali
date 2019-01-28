.class public Lc8/zgb;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field public static APP_KEY_INDEX:I

.field public static DEBUG:Z

.field public static LOGIN_HOST:Ljava/lang/String;

.field public static LOGIN_URLS:Ljava/lang/String;

.field public static LOGOUT_URLS:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

.field public static final SDK_VERSION:Lc8/Agb;

.field private static final SINGLETON_INSTANCE:Lc8/zgb;

.field public static bindUrl:Ljava/lang/String;

.field public static qrCodeLoginUrl:Ljava/lang/String;

.field public static qrCodeLoginUrl_daily:Ljava/lang/String;

.field public static qrLoginConfirmUrl:Ljava/lang/String;

.field public static unbindUrl:Ljava/lang/String;


# instance fields
.field private env:Lcom/ali/auth/third/core/config/Environment;

.field private fullyCustomizedLoginFragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private offlineDeviceID:Ljava/lang/String;

.field private orientation:I

.field private saveHistoryWithSalt:Z

.field scanParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 9
    sput-boolean v2, Lc8/zgb;->DEBUG:Z

    .line 11
    new-instance v0, Lc8/Agb;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v3}, Lc8/Agb;-><init>(III)V

    sput-object v0, Lc8/zgb;->SDK_VERSION:Lc8/Agb;

    .line 13
    new-instance v0, Lc8/zgb;

    invoke-direct {v0}, Lc8/zgb;-><init>()V

    sput-object v0, Lc8/zgb;->SINGLETON_INSTANCE:Lc8/zgb;

    .line 74
    const-string/jumbo v0, "http://login.m.taobao.com/minisdk/login.htm"

    sput-object v0, Lc8/zgb;->LOGIN_HOST:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    sput-object v0, Lc8/zgb;->bindUrl:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "https://accountlink.taobao.com/sdkUnbind.htm"

    sput-object v0, Lc8/zgb;->unbindUrl:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    sput-object v0, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    .line 85
    sput v2, Lc8/zgb;->APP_KEY_INDEX:I

    .line 87
    const-string/jumbo v0, ""

    sput-object v0, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lc8/zgb;->qrCodeLoginUrl:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lc8/zgb;->qrCodeLoginUrl_daily:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "https://login.m.taobao.com/qrcodeLogin.htm?shortURL=%s&from=bcqrlogin"

    sput-object v0, Lc8/zgb;->qrLoginConfirmUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/zgb;->saveHistoryWithSalt:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lc8/zgb;->orientation:I

    .line 30
    return-void
.end method

.method public static getAppKeyIndex()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lc8/zgb;->APP_KEY_INDEX:I

    return v0
.end method

.method public static getInstance()Lc8/zgb;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc8/zgb;->SINGLETON_INSTANCE:Lc8/zgb;

    return-object v0
.end method

.method public static setAppKeyIndex(I)V
    .locals 0
    .param p0, "appKeyIndex"    # I

    .prologue
    .line 101
    sput p0, Lc8/zgb;->APP_KEY_INDEX:I

    .line 102
    return-void
.end method


# virtual methods
.method public getEnvironment()Lcom/ali/auth/third/core/config/Environment;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/zgb;->env:Lcom/ali/auth/third/core/config/Environment;

    return-object v0
.end method

.method public getFullyCustomizedLoginFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lc8/zgb;->fullyCustomizedLoginFragment:Ljava/lang/Class;

    return-object v0
.end method

.method public getOfflineDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/zgb;->offlineDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lc8/zgb;->orientation:I

    return v0
.end method

.method public getQrCodeLoginUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lc8/zgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/zgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/core/config/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lc8/zgb;->qrCodeLoginUrl_daily:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/zgb;->qrCodeLoginUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScanParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lc8/zgb;->scanParams:Ljava/util/Map;

    return-object v0
.end method

.method public init(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/ali/auth/third/core/config/Environment;->values()[Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lc8/zgb;->env:Lcom/ali/auth/third/core/config/Environment;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "http://login.waptest.tbsandbox.com/minisdk/login.htm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://login.waptest.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://login.wapa.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://login.m.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->LOGIN_HOST:Ljava/lang/String;

    .line 46
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "((https|http)://)login.waptest.tbsandbox.com/login.htm(.*)"

    aput-object v1, v0, v2

    const-string/jumbo v1, "((https|http)://)login.waptest.taobao.com/login.htm(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "((https|http)://)login.wapa.taobao.com/login.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    .line 51
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "((https|http)://)login.waptest.tbsandbox.com/logout.htm(.*)"

    aput-object v1, v0, v2

    const-string/jumbo v1, "((https|http)://)login.waptest.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "((https|http)://)login.wapa.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "((https|http)://)login.m.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->LOGOUT_URLS:Ljava/lang/String;

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "http://login.waptest.tbsandbox.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://login.waptest.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://login.wapa.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->bindUrl:Ljava/lang/String;

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "https://accountlink.daily.taobao.net/sdkUnbind.htm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://accountlink.daily.taobao.net/sdkUnbind.htm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "https://accountlink.taobao.com/sdkUnbind.htm"

    aput-object v1, v0, v4

    const-string/jumbo v1, "https://accountlink.taobao.com/sdkUnbind.htm"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->unbindUrl:Ljava/lang/String;

    .line 63
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://login.wapa.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->qrCodeLoginUrl:Ljava/lang/String;

    .line 66
    sget-object v0, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    sput-object v0, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSaveHistoryWithSalt()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lc8/zgb;->saveHistoryWithSalt:Z

    return v0
.end method

.method public setFullyCustomizedLoginFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "fullyCustomizedLoginFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lc8/zgb;->fullyCustomizedLoginFragment:Ljava/lang/Class;

    .line 150
    return-void
.end method

.method public setOfflineDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "offlineDeviceID"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/zgb;->offlineDeviceID:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 133
    iput p1, p0, Lc8/zgb;->orientation:I

    .line 134
    return-void
.end method

.method public setSaveHistoryWithSalt(Z)V
    .locals 0
    .param p1, "saveHistorySaltOnly"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lc8/zgb;->saveHistoryWithSalt:Z

    .line 142
    return-void
.end method

.method public setScanParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "scanParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/zgb;->scanParams:Ljava/util/Map;

    .line 118
    return-void
.end method
