.class public Lc8/HTh;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GTh;,
        Lc8/FTh;
    }
.end annotation


# static fields
.field private static final APK_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_PATTERN:Ljava/util/regex/Pattern;

.field public static final KEY_HEADER_PARAMS:Ljava/lang/String; = "youku-header"

.field private static final RELEASE_APP_KEY:Ljava/lang/String;

.field public static final SCHEME_IQIYI:Ljava/lang/String; = "qiyimobile"

.field public static final SCHEME_LAIFENG_SDK:Ljava/lang/String; = "lfsdk"

.field public static final SCHEME_TENCENTVIDEO:Ljava/lang/String; = "tenvideo2"

.field private static SPM_URL_RULES:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UCWEBVIEW_DEBUG_RELEASE_UCSDKAPPKEY:[Ljava/lang/String;

.field private static final URL_DAILY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_MAIN:Ljava/lang/String; = "http://www.youku.com"

.field private static final WEB_STORAGE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isInitWindVane:Z

.field private static webEventListener:Lc8/GTh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/HTh;->URL_DAILY_LIST:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/HTh;->WEB_STORAGE_MAP:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    .line 123
    const-string/jumbo v0, "\\.apk$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/HTh;->APK_PATTERN:Ljava/util/regex/Pattern;

    .line 125
    const-string/jumbo v0, "(([0-9]{1,3}\\.){3}[0-9]{1,3})"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/HTh;->IP_PATTERN:Ljava/util/regex/Pattern;

    .line 129
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "youku.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "tudou.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "laifeng.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "taobao.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "tmall.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    const-string/jumbo v1, "alipay.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lc8/HTh;->URL_DAILY_LIST:Ljava/util/List;

    const-string/jumbo v1, "http://heyi.test"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lc8/HTh;->URL_DAILY_LIST:Ljava/util/List;

    const-string/jumbo v1, "http://1verge.test"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lc8/Iin;->DEFAULT_APP_KEY:Ljava/lang/String;

    sput-object v0, Lc8/HTh;->RELEASE_APP_KEY:Ljava/lang/String;

    .line 144
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "Khxzz1jsZXD2vDai/TiWGxnyKoB4ZDtJdcEhcxlSliEEAmDiVibJj/Mgu0ki/sPd+OvLFxAV3xf874rigTxUFw=="

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "IX0WNcTHMKtxvnr/HqS/Xlmc0D0dOinYRHVm24msc/SRSZoFNr0MsHxmsdn8U8gzi4ubISCnApbPoXLEE4QAQQ=="

    aput-object v2, v0, v1

    sput-object v0, Lc8/HTh;->UCWEBVIEW_DEBUG_RELEASE_UCSDKAPPKEY:[Ljava/lang/String;

    .line 1116
    sput-boolean v3, Lc8/HTh;->isInitWindVane:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    return-void
.end method

.method public static addParamsToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add Params "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 714
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 718
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 719
    .local v4, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 722
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "part":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string/jumbo v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 727
    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v4}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 733
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v1    # "part":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object p0, v2

    .line 741
    goto :goto_0

    .line 729
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "part":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 735
    .end local v1    # "part":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WebViewUtils"

    invoke-static {v5, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2
.end method

.method public static addSpmUrlRules(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 1266
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    .line 1268
    :cond_2
    sget-object v0, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static addWindVaneExtraSettings(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 1109
    invoke-static {p0}, Lc8/HTh;->getInteractionUserAgent(Landroid/webkit/WebSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1114
    :cond_0
    return-void
.end method

.method public static clearAllCookies()V
    .locals 4

    .prologue
    .line 792
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 793
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 795
    .local v0, "cm":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 798
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 799
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 800
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 801
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 802
    invoke-static {}, Lc8/HTh;->clearDefaultCookie()V

    .line 803
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static clearDefaultCookie()V
    .locals 2

    .prologue
    .line 933
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 934
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    .line 935
    check-cast v0, Ljava/net/CookieManager;

    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    .line 937
    :cond_0
    return-void
.end method

.method public static destroyWebEventListener(Lc8/GTh;)V
    .locals 1
    .param p0, "listener"    # Lc8/GTh;

    .prologue
    .line 1365
    const/4 v0, 0x0

    sput-object v0, Lc8/HTh;->webEventListener:Lc8/GTh;

    .line 1366
    return-void
.end method

.method public static destroyWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 404
    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 406
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 408
    :cond_0
    return-void
.end method

.method public static destroyWebView(Lc8/TTh;)V
    .locals 1
    .param p0, "view"    # Lc8/TTh;

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 395
    invoke-virtual {p0}, Lc8/TTh;->removeAllViews()V

    .line 396
    invoke-virtual {p0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lc8/HTh;->destroyWebView(Landroid/webkit/WebView;)V

    .line 398
    :cond_0
    return-void
.end method

.method public static doCommonConfig(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "mWebView"    # Landroid/webkit/WebView;

    .prologue
    .line 1092
    const-string/jumbo v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1098
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 1101
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1103
    :cond_0
    return-void
.end method

.method public static generateHeaderParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "youku-header"

    invoke-static {p0}, Lc8/HTh;->generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-object v0
.end method

.method public static generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 346
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateJS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "javascript:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v1, "function(){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v1, "try{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-eqz v1, :cond_0

    .line 634
    const-string/jumbo v1, "console.debug(\'Prepare executing method >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_0
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-nez v1, :cond_1

    .line 638
    const-string/jumbo v1, "if(typeof("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")!==\'undefined\'){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-nez v1, :cond_2

    .line 644
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_2
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-eqz v1, :cond_3

    .line 648
    const-string/jumbo v1, "console.debug(\'Post executing method >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_3
    const-string/jumbo v1, "}catch(e){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-eqz v1, :cond_4

    .line 653
    const-string/jumbo v1, "console.error("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string/jumbo v1, "\'Failed to execute method >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string/jumbo v1, "+\'\\n\'+e);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string/jumbo v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateParamsStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppCookie()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1016
    :try_start_0
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 1017
    .local v0, "dataSource":Lc8/vdn;
    if-eqz v0, :cond_0

    .line 1018
    invoke-interface {v0}, Lc8/vdn;->getCookie()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1023
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1080
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1081
    .local v0, "cache":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1086
    .end local v0    # "cache":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1082
    .restart local v0    # "cache":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "WebView/AppCache"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1083
    .end local v0    # "cache":Ljava/io/File;
    .local v1, "cache":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1084
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1086
    .end local v1    # "cache":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getCookie(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 754
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 756
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 775
    :goto_0
    return-object v5

    .line 758
    :cond_0
    const-string/jumbo v4, "((?<=(^|;)).*?(?=\\=))\\=((?<=(\\=)).*?(?=(;|$)))"

    .line 759
    .local v4, "regex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 760
    .local v3, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 762
    .local v2, "mat":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 763
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 764
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "Key":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "Value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 773
    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "Value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "WebViewUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cookie MAP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 275
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 277
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "device_sys"

    const-string/jumbo v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :try_start_0
    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 280
    .local v0, "dataSource":Lc8/vdn;
    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v3, "guid"

    invoke-interface {v0}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v4, "device_type"

    invoke-interface {v0}, Lc8/vdn;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "2"

    :goto_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v3, "client_version"

    invoke-interface {v0}, Lc8/vdn;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "dataSource":Lc8/vdn;
    :cond_0
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "headerBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "youku-header"

    invoke-static {v1}, Lc8/HTh;->generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v2

    .line 282
    .end local v2    # "headerBundle":Landroid/os/Bundle;
    .restart local v0    # "dataSource":Lc8/vdn;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "1"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "dataSource":Lc8/vdn;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getDeviceHeaderBundleForADCard()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v2, "headerBundle":Landroid/os/Bundle;
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 311
    .local v3, "heanders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "device_sys"

    const-string/jumbo v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :try_start_0
    const-class v4, Lc8/vdn;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    .line 314
    .local v1, "dataSource":Lc8/vdn;
    if-eqz v1, :cond_0

    .line 315
    const-string/jumbo v5, "uid"

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    :goto_0
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v4, "guid"

    invoke-interface {v1}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v5, "device_type"

    invoke-interface {v1}, Lc8/vdn;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "2"

    :goto_1
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1    # "dataSource":Lc8/vdn;
    :cond_0
    :goto_2
    const-string/jumbo v4, "youku-header"

    invoke-static {v3}, Lc8/HTh;->generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v4, "KEY_EXTRA_SET_DEVICE_INFO"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 324
    return-object v0

    .line 315
    .restart local v1    # "dataSource":Lc8/vdn;
    :cond_1
    :try_start_1
    const-string/jumbo v4, ""

    goto :goto_0

    .line 317
    :cond_2
    const-string/jumbo v4, "1"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "dataSource":Lc8/vdn;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static getInteractionUserAgent(Landroid/webkit/WebSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    const-string/jumbo v2, ""

    .line 266
    :goto_0
    return-object v2

    .line 243
    :cond_0
    :try_start_0
    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 244
    .local v0, "dataSource":Lc8/vdn;
    if-eqz v0, :cond_4

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " yk_web_sdk_"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1.0.11.18"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Youku/"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lc8/vdn;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (Android "

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v0}, Lc8/vdn;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-string/jumbo v2, " Youku_HD;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    const-string/jumbo v2, " Bridge_SDK;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v0}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    const-string/jumbo v2, " GUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    invoke-interface {v0}, Lc8/vdn;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    const-string/jumbo v2, " UTDID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lc8/vdn;->getUtdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .end local v0    # "dataSource":Lc8/vdn;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 266
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getLocalStorageForWeb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-object v1

    .line 1411
    :cond_1
    sget-object v2, Lc8/HTh;->WEB_STORAGE_MAP:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    sget-object v2, Lc8/HTh;->WEB_STORAGE_MAP:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1412
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1413
    sget-object v1, Lc8/HTh;->WEB_STORAGE_MAP:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 1415
    :cond_2
    if-eqz p0, :cond_0

    .line 1418
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1419
    .local v0, "p":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTopDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 688
    .local v0, "host":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 689
    .local v2, "parser":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lc8/HTh;->isIP(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 692
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 693
    .local v1, "lastIndex":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "subStr":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 695
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 700
    .end local v1    # "lastIndex":I
    .end local v2    # "parser":Landroid/net/Uri;
    .end local v3    # "subStr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return-object v0

    .restart local v0    # "host":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getWebEventListener()Lc8/GTh;
    .locals 1

    .prologue
    .line 1361
    sget-object v0, Lc8/HTh;->webEventListener:Lc8/GTh;

    return-object v0
.end method

.method public static initSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1032
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    invoke-static {p1}, Lc8/HTh;->getInteractionUserAgent(Landroid/webkit/WebSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1038
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1039
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1041
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1042
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1043
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1045
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1046
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1047
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 1049
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1051
    invoke-static {p0}, Lc8/HTh;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "appCache":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1053
    invoke-static {p0}, Lc8/HTh;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 1054
    const-wide/32 v2, 0x1400000

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 1057
    :cond_0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1058
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1059
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1060
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1063
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 1064
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1067
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 1068
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1071
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-eqz v1, :cond_3

    .line 1072
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1075
    :cond_3
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1076
    return-void

    .end local v0    # "appCache":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static initWindVane()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1119
    sget-boolean v4, Lc8/HTh;->isInitWindVane:Z

    if-eqz v4, :cond_0

    .line 1261
    .local v1, "params":Lc8/BB;
    :goto_0
    return-void

    .line 1123
    .end local v1    # "params":Lc8/BB;
    :cond_0
    sget-boolean v4, Lc8/KWc;->LOG:Z

    invoke-static {v4}, Lc8/mB;->openLog(Z)V

    .line 1125
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1136
    sget-object v4, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v4}, Lc8/mB;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    .line 1139
    :goto_1
    new-instance v1, Lc8/BB;

    invoke-direct {v1}, Lc8/BB;-><init>()V

    .line 1141
    .restart local v1    # "params":Lc8/BB;
    sget-object v4, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/AQp;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/BB;->imei:Ljava/lang/String;

    .line 1143
    sget-object v4, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/AQp;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/BB;->imsi:Ljava/lang/String;

    .line 1145
    sget-object v4, Lc8/HTh;->UCWEBVIEW_DEBUG_RELEASE_UCSDKAPPKEY:[Ljava/lang/String;

    iput-object v4, v1, Lc8/BB;->ucsdkappkeySec:[Ljava/lang/String;

    .line 1147
    const/4 v4, 0x2

    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v5

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "60032872"

    :goto_2
    iput-object v4, v1, Lc8/BB;->appKey:Ljava/lang/String;

    .line 1149
    const-string/jumbo v4, "Youku"

    iput-object v4, v1, Lc8/BB;->appTag:Ljava/lang/String;

    .line 1150
    sget-object v4, Lc8/Dfh;->versionName:Ljava/lang/String;

    iput-object v4, v1, Lc8/BB;->appVersion:Ljava/lang/String;

    .line 1151
    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/BB;->ttid:Ljava/lang/String;

    .line 1155
    :try_start_0
    sget-object v4, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lc8/mB;->init(Landroid/content/Context;Lc8/BB;)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1170
    sput-boolean v6, Lc8/HTh;->isInitWindVane:Z

    .line 1175
    invoke-static {}, Lc8/tE;->setup()V

    .line 1179
    invoke-static {}, Lc8/LF;->init()V

    .line 1184
    const-class v4, Lc8/xC;

    invoke-static {v4}, Lc8/HE;->registerUploadService(Ljava/lang/Class;)V

    .line 1189
    invoke-static {}, Lc8/ITh;->init()V

    .line 1199
    new-instance v4, Lc8/jG;

    invoke-direct {v4}, Lc8/jG;-><init>()V

    invoke-static {v4}, Lc8/xG;->registerWvPackageAppConfig(Lc8/kG;)V

    .line 1200
    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v4

    sget-object v5, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lc8/sG;->init(Landroid/content/Context;Z)V

    .line 1201
    invoke-static {}, Lc8/rC;->initJsApi()V

    .line 1206
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v4

    new-instance v5, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-direct {v5}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;-><init>()V

    invoke-virtual {v4, v5}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 1210
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v4

    new-instance v5, Lc8/kTh;

    invoke-direct {v5}, Lc8/kTh;-><init>()V

    invoke-virtual {v4, v5}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 1215
    :try_start_1
    const-string/jumbo v4, "WVTBUserTrack"

    const-class v5, Lcom/ut/mini/core/WVUserTrack;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 1220
    :goto_3
    const-string/jumbo v4, "WVLoginJSBridge"

    const-class v5, Lc8/ZSh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1222
    const-string/jumbo v4, "WVActionJSBridge"

    const-class v5, Lc8/USh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1224
    const-string/jumbo v4, "WVLoadBridge"

    const-class v5, Lc8/XSh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1229
    const-string/jumbo v4, "WVPayBridge"

    const-class v5, Lc8/dTh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1231
    const-string/jumbo v4, "WVDiagnoseBridge"

    const-class v5, Lc8/WSh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1234
    :try_start_2
    const-string/jumbo v4, "TBWVOpenHandler"

    const-class v5, Lc8/ESh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 1240
    :goto_4
    :try_start_3
    const-string/jumbo v4, "YKWVStepBridge"

    const-class v5, Lc8/cLj;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 1246
    :goto_5
    :try_start_4
    invoke-static {}, Lc8/qrf;->register()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 1251
    :goto_6
    const-string/jumbo v4, "DYKBaseJSBridge"

    const-class v5, Lc8/eTh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1254
    const-string/jumbo v4, "WVTaobaoYoukuAccountJSBridge"

    const-class v5, Lc8/SSh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1256
    const-string/jumbo v4, "DYKUserJSBridge"

    const-class v5, Lc8/gTh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1258
    const-string/jumbo v4, "YKFWVAudioPlayer"

    const-class v5, Lc8/Mqm;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1260
    const-string/jumbo v4, "DYKStorageJSBridge"

    const-class v5, Lc8/DSh;

    invoke-static {v4, v5}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1127
    .end local v1    # "params":Lc8/BB;
    :pswitch_0
    sget-object v4, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v4}, Lc8/mB;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    goto/16 :goto_1

    .line 1130
    :pswitch_1
    sget-object v4, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v4}, Lc8/mB;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    goto/16 :goto_1

    .line 1133
    :pswitch_2
    sget-object v4, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v4}, Lc8/mB;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    goto/16 :goto_1

    .line 1147
    .restart local v1    # "params":Lc8/BB;
    :cond_1
    sget-object v4, Lc8/HTh;->RELEASE_APP_KEY:Ljava/lang/String;

    goto/16 :goto_2

    .line 1156
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Landroid/util/AndroidRuntimeException;
    const-string/jumbo v4, "WebViewUtils.initWindVane"

    const-string/jumbo v5, "init WindVane Error"

    invoke-static {v4, v5, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1160
    .end local v0    # "e":Landroid/util/AndroidRuntimeException;
    :catch_1
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WebViewUtils.initWindVane"

    const-string/jumbo v5, "init Windvane Error"

    invoke-static {v4, v5, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1164
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 1166
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "WebViewUtils.initWindVane"

    const-string/jumbo v5, "init Windvane Error"

    invoke-static {v4, v5, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1216
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 1217
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "WebViewUtils"

    invoke-static {v4, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1235
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_4
    move-exception v3

    .line 1236
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "WebViewUtils"

    invoke-static {v4, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1241
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_5
    move-exception v3

    .line 1242
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "WebViewUtils"

    invoke-static {v4, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1247
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_6
    move-exception v3

    .line 1248
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "WebViewUtils"

    invoke-static {v4, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isIP(Ljava/lang/String;)Z
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 678
    sget-object v1, Lc8/HTh;->IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 679
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUCWebUrl(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1330
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "isUCWeb"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1332
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 158
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.WebViewActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 163
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    :cond_3
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->isActivityStackEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static launchInteractionWebViewForResult(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 186
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.WebViewActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static launchPay(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lc8/Efh;->getH5PayUrl()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "url":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lc8/HTh;->launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public static launchPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 206
    :cond_0
    if-nez p2, :cond_1

    .line 207
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 210
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.youku.ui.activity.WebViewActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "KEY_EXTRA_SET_DEVICE_INFO"

    invoke-static {}, Lc8/HTh;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static launchUCWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1298
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1302
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.WVWebViewActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 1306
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1308
    :cond_3
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->isActivityStackEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1309
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    :cond_4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1312
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1314
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    invoke-static {p1, p2}, Lc8/HTh;->generateJS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebViewUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadJS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lc8/HTh;->generateParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public static navActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetUrl"    # Ljava/lang/String;
    .param p2, "sourceUrl"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 485
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 489
    :cond_1
    instance-of v5, p0, Landroid/app/Activity;

    if-nez v5, :cond_2

    instance-of v5, p0, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_2

    .line 490
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 493
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 500
    const-string/jumbo v5, "youku"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v5, "?"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "&"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "activeby=2"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 502
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, ""

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    :cond_3
    invoke-static {p1}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 507
    const-string/jumbo v5, "com.youku.ui.activity.WebViewActivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "com.youku.ui.activity.WVWebViewActivity"

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    :cond_4
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Ybf;->disallowLoopback()Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v1

    .line 511
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    invoke-static {p1, p2}, Lc8/LHg;->updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v3

    .line 515
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "WebViewUtils"

    invoke-static {v5, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 501
    .end local v1    # "result":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    const-string/jumbo v5, "?"

    goto :goto_1

    .line 502
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 524
    :cond_7
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 526
    :try_start_1
    invoke-static {p1, p2}, Lc8/LHg;->updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v1, v6

    .line 530
    goto/16 :goto_0

    .line 527
    :catch_1
    move-exception v3

    .line 528
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "WebViewUtils"

    invoke-static {v5, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 533
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    const-string/jumbo v7, "webview_config"

    const-string/jumbo v8, "schemeWhiteList"

    .line 534
    invoke-virtual {v5, v7, v8, v9}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v5}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 536
    .local v4, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-eqz v5, :cond_a

    .line 537
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 538
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Ybf;->allowEscape()Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v1

    .line 540
    .restart local v1    # "result":Z
    if-eqz v1, :cond_0

    .line 541
    :try_start_2
    invoke-static {p1, p2}, Lc8/LHg;->updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 543
    :catch_2
    move-exception v3

    .line 544
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "WebViewUtils"

    invoke-static {v5, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1    # "result":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_9
    move v1, v6

    .line 548
    goto/16 :goto_0

    .line 552
    :cond_a
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    const-string/jumbo v7, "webview_config"

    const-string/jumbo v8, "schemeBlackList"

    .line 553
    invoke-virtual {v5, v7, v8, v9}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-static {v5}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 555
    .local v0, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    const-string/jumbo v5, "tenvideo2"

    .line 556
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "qiyimobile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    move v1, v6

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_d
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Ybf;->allowEscape()Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v1

    .line 561
    .restart local v1    # "result":Z
    if-eqz v1, :cond_0

    .line 562
    :try_start_3
    invoke-static {p1, p2}, Lc8/LHg;->updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 564
    :catch_3
    move-exception v3

    .line 565
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "WebViewUtils"

    invoke-static {v5, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static pauseWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 376
    :cond_0
    return-void
.end method

.method public static removeAliAppUserAgent(Landroid/webkit/WebSettings;)V
    .locals 5
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 1337
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v2

    invoke-virtual {v2}, Lc8/xB;->getAppTag()Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "apptag":Ljava/lang/String;
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v2

    invoke-virtual {v2}, Lc8/xB;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, "appversion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    const-string/jumbo v2, ""

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " AliApp\\(.*?\\)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1342
    :cond_0
    return-void
.end method

.method public static resetWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 352
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 353
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WebViewUtils"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static resumeWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    .line 365
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 367
    :cond_0
    return-void
.end method

.method public static saveLocalStorageForWeb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "toDisk"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1380
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return v1

    .line 1383
    :cond_1
    if-eqz p4, :cond_2

    .line 1384
    if-eqz p0, :cond_0

    .line 1387
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1388
    .local v0, "p":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1391
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v2

    .line 1392
    goto :goto_0

    .line 1394
    .end local v0    # "p":Landroid/content/SharedPreferences;
    :cond_2
    sget-object v1, Lc8/HTh;->WEB_STORAGE_MAP:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 1395
    goto :goto_0
.end method

.method public static setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 875
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lc8/HTh;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 876
    return-void
.end method

.method public static setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "isSetToDomain"    # Z

    .prologue
    .line 890
    invoke-static {p2}, Lc8/HTh;->getCookie(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lc8/HTh;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 891
    return-void
.end method

.method public static setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "isSetToDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p2, "cookie":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    const-string/jumbo v2, ""

    .line 899
    .local v2, "extendParams":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 900
    invoke-static {p1}, Lc8/HTh;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "topDomain":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ";domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lc8/HTh;->isIP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "path=/;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    const-string/jumbo v4, "WebViewUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "have got url domain for cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v3    # "topDomain":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 909
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 911
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 912
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 913
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 903
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "topDomain":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "."

    goto :goto_1

    .line 915
    .end local v3    # "topDomain":Ljava/lang/String;
    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_4
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    goto/16 :goto_0
.end method

.method public static setCookie4Default(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 861
    const-string/jumbo v1, "http://www.youku.com"

    invoke-static {p0, v1, p1}, Lc8/HTh;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget-object v1, Lc8/HTh;->URL_DAILY_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 863
    .local v0, "url":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lc8/HTh;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setDefaultNoneAcceptCookieManager()V
    .locals 3

    .prologue
    .line 1011
    new-instance v0, Ljava/net/CookieManager;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_NONE:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 1012
    return-void
.end method

.method public static setWebEventListener(Lc8/GTh;)V
    .locals 0
    .param p0, "listener"    # Lc8/GTh;

    .prologue
    .line 1357
    sput-object p0, Lc8/HTh;->webEventListener:Lc8/GTh;

    .line 1358
    return-void
.end method

.method public static shouldAppendSpm2Url(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v3

    .line 1273
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1274
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1276
    sget-object v4, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    .line 1277
    sget-object v4, Lc8/HTh;->SPM_URL_RULES:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1278
    .local v1, "rule":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1279
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static shouldDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const/4 v3, 0x0

    .line 585
    if-nez p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v3

    .line 588
    :cond_1
    invoke-static {p0}, Lc8/Bfh;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "pid":Ljava/lang/String;
    const-string/jumbo v4, "a1c0f66d02e2a816"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    const-string/jumbo v4, "WebViewUtils"

    const-string/jumbo v5, "GooglePlay PID, Forbidden!!!"

    invoke-static {v4, v5}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_3

    sget-object v4, Lc8/HTh;->APK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz p3, :cond_0

    sget-object v4, Lc8/HTh;->APK_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    invoke-virtual {v4, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static shouldOverrideUrlByAli(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 940
    invoke-static {p0}, Lc8/wFb;->isAliUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldStartActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/HTh;->shouldStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 475
    :goto_0
    return v3

    .line 426
    :cond_1
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_2

    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 427
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 430
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_3

    move v3, v4

    .line 433
    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 437
    const-string/jumbo v3, "youku"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "&"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "activeby=2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 439
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, ""

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    :cond_4
    invoke-static {p1}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 444
    const-string/jumbo v3, "com.youku.ui.activity.WebViewActivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.youku.ui.activity.WVWebViewActivity"

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 446
    :cond_5
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Ybf;->disallowLoopback()Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 438
    :cond_6
    const-string/jumbo v3, "?"

    goto :goto_1

    .line 439
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    move v3, v4

    .line 449
    goto/16 :goto_0

    .line 453
    :cond_9
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    .line 454
    goto/16 :goto_0

    .line 457
    :cond_a
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const-string/jumbo v4, "webview_config"

    const-string/jumbo v6, "schemeWhiteList"

    .line 458
    invoke-virtual {v3, v4, v6, v8}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v3}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 460
    .local v2, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-eqz v3, :cond_c

    .line 461
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 462
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Ybf;->allowEscape()Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 464
    goto/16 :goto_0

    .line 468
    :cond_c
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const-string/jumbo v4, "webview_config"

    const-string/jumbo v6, "schemeBlackList"

    .line 469
    invoke-virtual {v3, v4, v6, v8}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-static {v3}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 471
    .local v0, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const-string/jumbo v3, "tenvideo2"

    .line 472
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "qiyimobile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move v3, v5

    .line 473
    goto/16 :goto_0

    .line 475
    :cond_f
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Ybf;->allowEscape()Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0
.end method
