.class public Landroid/taobao/windvane/webview/WVWebView;
.super Landroid/webkit/WebView;
.source "WVWebView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/webview/IWVWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FI;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebView"

.field private static evaluateJavascriptSupported:Z


# instance fields
.field private final WVURL_SUFFIX:Ljava/lang/String;

.field public bizCode:Ljava/lang/String;

.field public context:Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Lc8/hE;

.field protected isAlive:Z

.field isUser:Z

.field private jsPatchListener:Lc8/CF;

.field private longPressSaveImage:Z

.field mEventSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private mImageUrl:Ljava/lang/String;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPopupClickListener:Landroid/view/View$OnClickListener;

.field private mPopupController:Lc8/jI;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field public supportDownload:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected webChromeClient:Lc8/AI;

.field protected webViewClient:Lc8/HI;

.field private wvSecurityFilter:Lc8/MD;

.field private wvSupportFileSchema:Z

.field private wvSupportNativeJs:Z

.field private wvUIModel:Lc8/xI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    .line 69
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    .line 71
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    .line 73
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    .line 80
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    .line 81
    iput-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 82
    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 84
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "?wvFackUrlState="

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    .line 91
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    .line 92
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 500
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    .line 501
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 504
    new-instance v0, Lc8/EI;

    invoke-direct {v0, p0}, Lc8/EI;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 818
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 819
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 109
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    .line 111
    return-void

    .line 501
    :cond_0
    const-string/jumbo v0, "Save picture to album"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    .line 69
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    .line 71
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    .line 73
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    .line 80
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    .line 81
    iput-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 82
    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 84
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "?wvFackUrlState="

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    .line 91
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    .line 92
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 500
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    .line 501
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 504
    new-instance v0, Lc8/EI;

    invoke-direct {v0, p0}, Lc8/EI;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 818
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 819
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 102
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    .line 104
    return-void

    .line 501
    :cond_0
    const-string/jumbo v0, "Save picture to album"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    .line 69
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    .line 71
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    .line 73
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    .line 80
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    .line 81
    iput-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 82
    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 84
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "?wvFackUrlState="

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    .line 91
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    .line 92
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 500
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    .line 501
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 504
    new-instance v0, Lc8/EI;

    invoke-direct {v0, p0}, Lc8/EI;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 818
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 819
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 96
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    .line 98
    return-void

    .line 501
    :cond_0
    const-string/jumbo v0, "Save picture to album"

    goto :goto_0
.end method

.method public static synthetic access$000(Landroid/taobao/windvane/webview/WVWebView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return v0
.end method

.method public static synthetic access$100(Landroid/taobao/windvane/webview/WVWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Landroid/taobao/windvane/webview/WVWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/taobao/windvane/webview/WVWebView;)Lc8/jI;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    return-object v0
.end method

.method public static synthetic access$202(Landroid/taobao/windvane/webview/WVWebView;Lc8/jI;)Lc8/jI;
    .locals 0
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .param p1, "x1"    # Lc8/jI;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Landroid/taobao/windvane/webview/WVWebView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 215
    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 216
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v11

    const/16 v12, 0xbc0

    invoke-virtual {v11, v12}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 218
    :cond_0
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v11, Lc8/HI;

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lc8/HI;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    .line 220
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    invoke-super {p0, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    new-instance v11, Lc8/AI;

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lc8/AI;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    .line 222
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    invoke-super {p0, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 223
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    iput-object p0, v11, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 226
    invoke-virtual {p0, v13}, Landroid/taobao/windvane/webview/WVWebView;->setVerticalScrollBarEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->requestFocus()Z

    .line 228
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 229
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_1

    .line 230
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11, p0, v14}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 232
    :cond_1
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {v11}, Lc8/qI;->disableAccessibility(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    .line 235
    .local v10, "setting":Landroid/webkit/WebSettings;
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 236
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 237
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v11

    invoke-virtual {v11}, Lc8/xB;->getAppTag()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "apptag":Ljava/lang/String;
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v11

    invoke-virtual {v11}, Lc8/xB;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "appversion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " AliApp("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 242
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " WindVane/8.3.0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 243
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 245
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x5

    if-lt v11, v12, :cond_3

    .line 246
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "/data/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "dbPath":Ljava/lang/String;
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 255
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 257
    .end local v5    # "dbPath":Ljava/lang/String;
    :cond_3
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x7

    if-lt v11, v12, :cond_4

    .line 261
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 265
    invoke-virtual {v10, v14}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 267
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 268
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "cacheDir":Ljava/lang/String;
    invoke-virtual {v10, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 273
    .end local v2    # "cacheDir":Ljava/lang/String;
    :cond_4
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-ge v11, v12, :cond_5

    .line 274
    invoke-virtual {v10, v13}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 277
    :cond_5
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-lt v11, v12, :cond_b

    .line 278
    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 283
    :goto_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_6

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_6

    .line 284
    invoke-static {v14}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 287
    :cond_6
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v11

    invoke-virtual {v11}, Lc8/fE;->init()V

    .line 289
    new-instance v11, Lc8/hE;

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v11, v12, p0}, Lc8/hE;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    .line 290
    new-instance v9, Lc8/SD;

    invoke-direct {v9}, Lc8/SD;-><init>()V

    .line 291
    .local v9, "event":Lc8/SD;
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v9, v11, p0}, Lc8/SD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V

    .line 292
    const-string/jumbo v11, "AppEvent"

    invoke-virtual {p0, v11, v9}, Landroid/taobao/windvane/webview/WVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xa

    if-le v11, v12, :cond_7

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-ge v11, v12, :cond_7

    .line 297
    :try_start_0
    const-string/jumbo v11, "searchBoxJavaBridge_"

    invoke-virtual {p0, v11}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v11, "accessibility"

    invoke-virtual {p0, v11}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v11, "accessibilityTraversal"

    invoke-virtual {p0, v11}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_7
    :goto_1
    new-instance v11, Lc8/MD;

    invoke-direct {v11}, Lc8/MD;-><init>()V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    .line 307
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v11

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    sget v13, Lc8/qH;->WV_FORWARD_EVENT:I

    invoke-virtual {v11, v12, v13}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 308
    new-instance v11, Lc8/CF;

    invoke-direct {v11, p0}, Lc8/CF;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    .line 309
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v11

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    sget v13, Lc8/qH;->WV_BACKWARD_EVENT:I

    invoke-virtual {v11, v12, v13}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 312
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xf

    if-le v11, v12, :cond_8

    .line 314
    :try_start_1
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const-string/jumbo v12, "clipboard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 315
    .local v4, "clipboard":Landroid/content/ClipboardManager;
    if-eqz v4, :cond_8

    .line 316
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 317
    .local v3, "clip":Landroid/content/ClipData;
    if-nez v3, :cond_c

    .line 318
    const-string/jumbo v11, "\u521d\u59cb\u5316"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    .end local v3    # "clip":Landroid/content/ClipData;
    .end local v4    # "clipboard":Landroid/content/ClipboardManager;
    :cond_8
    :goto_2
    new-instance v11, Lc8/xI;

    iget-object v12, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v11, v12, p0}, Lc8/xI;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    .line 329
    new-instance v11, Lc8/BI;

    invoke-direct {v11, p0}, Lc8/BI;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 357
    iget-object v11, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v11}, Landroid/taobao/windvane/webview/WVWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    new-instance v11, Lc8/FI;

    invoke-direct {v11, p0}, Lc8/FI;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    invoke-virtual {p0, v11}, Landroid/taobao/windvane/webview/WVWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 360
    invoke-static {}, Lc8/uI;->tryTweakWebCoreHandler()V

    .line 361
    iput-boolean v14, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 362
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 364
    .local v6, "currentTime":J
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v11

    invoke-interface {v11, v6, v7}, Lc8/cG;->didWebViewInitAtTime(J)V

    .line 366
    .end local v6    # "currentTime":J
    :cond_9
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_a

    invoke-static {}, Lc8/qI;->shouldDisableHardwareRenderInLayer()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 368
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {p0, v11, v12}, Landroid/taobao/windvane/webview/WVWebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    :cond_a
    :goto_3
    new-instance v11, Lc8/ZD;

    invoke-direct {v11, p0}, Lc8/ZD;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string/jumbo v12, "__windvane__"

    invoke-virtual {p0, v11, v12}, Landroid/taobao/windvane/webview/WVWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    return-void

    .line 280
    .end local v9    # "event":Lc8/SD;
    :cond_b
    sget-object v11, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto/16 :goto_0

    .line 300
    .restart local v9    # "event":Lc8/SD;
    :catch_0
    move-exception v8

    .line 301
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 319
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v3    # "clip":Landroid/content/ClipData;
    .restart local v4    # "clipboard":Landroid/content/ClipboardManager;
    :cond_c
    :try_start_3
    const-string/jumbo v11, "intent:#Intent;S.K_1171477665=;end"

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    iget-object v13, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v12, v13}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 320
    const-string/jumbo v11, "\u521d\u59cb\u5316"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .end local v3    # "clip":Landroid/content/ClipData;
    .end local v4    # "clipboard":Landroid/content/ClipboardManager;
    :catch_1
    move-exception v11

    goto/16 :goto_2

    .line 369
    :catch_2
    move-exception v8

    .line 370
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 623
    const-string/jumbo v0, "WVWebView"

    const-string/jumbo v1, "addJavascriptInterface is disabled before API level 17 for security reason."

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    .line 640
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0, p1, p2}, Lc8/hE;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    :cond_0
    return-void
.end method

.method public back()Z
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->goBack()V

    .line 748
    const/4 v0, 0x1

    .line 750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 739
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 804
    return-void
.end method

.method public closeLongPressSaveImage()V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    .line 710
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 407
    invoke-super {p0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 408
    invoke-super {p0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 409
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    .line 410
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    .line 411
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fE;->tryToRunTailBridges()V

    .line 412
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0}, Lc8/hE;->onDestroy()V

    .line 413
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 415
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 417
    :cond_1
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbbb

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 418
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Lc8/MD;

    invoke-virtual {v0, v1}, Lc8/qH;->removeEventListener(Lc8/pH;)V

    .line 419
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Lc8/CF;

    invoke-virtual {v0, v1}, Lc8/qH;->removeEventListener(Lc8/pH;)V

    .line 420
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->removeAllViews()V

    .line 421
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Lc8/jI;

    .line 422
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 423
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 424
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/webview/WVWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 425
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 426
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 430
    :cond_2
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 673
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 679
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 685
    :cond_0
    sget-boolean v0, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    if-eqz v0, :cond_1

    .line 687
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 700
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    sput-boolean v2, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 690
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 692
    :catch_1
    move-exception v0

    sput-boolean v2, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 693
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 695
    :cond_1
    if-nez p2, :cond_2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string/jumbo v0, "{}"

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 721
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 723
    const-string/jumbo v1, "WVWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUrl by currentUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 727
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 726
    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "WVWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUrl by webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-nez v0, :cond_0

    .line 647
    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0, p1}, Lc8/hE;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 784
    return-object p0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWVHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWvUIModel()Lc8/xI;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 456
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 458
    :pswitch_0
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v2}, Lc8/xI;->isShowLoading()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->showLoadingView()V

    .line 460
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0, v1}, Lc8/xI;->switchNaviBar(I)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v2}, Lc8/xI;->isShowLoading()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideLoadingView()V

    .line 467
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->resetNaviBar()V

    .line 469
    :cond_3
    iget-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideErrorPage()V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v2}, Lc8/xI;->loadErrorPage()V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 477
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v2}, Lc8/xI;->isShowLoading()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideLoadingView()V

    goto :goto_0

    .line 483
    :pswitch_3
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v2}, Lc8/xI;->isShowLoading()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideLoadingView()V

    goto/16 :goto_0

    .line 489
    :pswitch_4
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "Success to save picture"

    goto :goto_1

    .line 493
    :pswitch_5
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    :goto_2
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "Failed to save picture"

    goto :goto_2

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hideLoadingView()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideLoadingView()V

    .line 799
    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    return v0
.end method

.method public isSupportFileSchema()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "failUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string/jumbo v0, "WVWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadDataWithBaseURL: baseUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v4

    invoke-virtual {v4}, Lc8/OB;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "forbiddenDomainRedirectURL":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const/16 v4, 0x192

    invoke-virtual {p0, v4, p1}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 178
    .end local v2    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v2    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-super {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WVWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v4

    const/16 v5, 0xbc2

    invoke-virtual {v4, v5}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 156
    iget-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    const-string/jumbo v4, "WVWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadUrl: url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-static {}, Lc8/rI;->getWVSchemeIntercepter()Lc8/sI;

    move-result-object v3

    .line 162
    .local v3, "schemeIntercepter":Lc8/sI;
    if-eqz v3, :cond_4

    .line 163
    invoke-interface {v3, p1}, Lc8/sI;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_4
    :try_start_1
    invoke-static {}, Lc8/CH;->getWVABTestHandler()Lc8/xH;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Lc8/dI;->shouldTryABTest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    invoke-static {}, Lc8/CH;->getWVABTestHandler()Lc8/xH;

    move-result-object v4

    invoke-interface {v4, p1}, Lc8/xH;->toABTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "abTestUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 170
    const-string/jumbo v4, "WVWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " abTestUrl to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object p1, v0

    .line 174
    .end local v0    # "abTestUrl":Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WVWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-string/jumbo v0, "WVWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl with headers: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 652
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0, p1, p2, p3}, Lc8/hE;->onActivityResult(IILandroid/content/Intent;)V

    .line 655
    :cond_0
    return-void
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 446
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 447
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 449
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0}, Lc8/hE;->onPause()V

    .line 550
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 551
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 553
    :cond_1
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 554
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v0}, Lc8/hE;->onResume()V

    .line 574
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 575
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 577
    :cond_1
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 578
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 535
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Lc8/hE;

    invoke-virtual {v1, p1, p2, p3, p4}, Lc8/hE;->onScrollChanged(IIII)V

    .line 539
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v3, 0x1

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 825
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 827
    .local v2, "pointerId":I
    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Landroid/taobao/windvane/webview/WVWebView;->dx:F

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    .line 830
    iget-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v4, :cond_2

    .line 831
    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 853
    :cond_0
    :goto_0
    return v3

    .line 835
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 836
    iget-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_0

    .line 853
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 840
    :cond_3
    if-ne v0, v3, :cond_2

    .line 841
    iget-boolean v4, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 842
    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    goto :goto_0

    .line 845
    :cond_4
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 846
    .local v1, "down":Landroid/view/MotionEvent;
    if-eqz v1, :cond_2

    .line 847
    invoke-super {p0, v1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 848
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 849
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1
.end method

.method public openLongPressSaveImage()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    .line 705
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v0, "WVWebView"

    const-string/jumbo v1, "You  must be careful  to Call pauseTimers ,It\'s Global"

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string/jumbo v0, "WVWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postUrl: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->reload()V

    .line 183
    return-void
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 128
    return-void
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 564
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 565
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string/jumbo v0, "WVWebView"

    const-string/jumbo v1, "You  must be careful  to Call resumeTimers ,It\'s Global"

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method public script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "doScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    .line 665
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lc8/cI;->putNativeCallbak(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:console.log(\'wvNativeCallback/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/\'+function(){var s = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; return (typeof s === \'object\' ? JSON.stringify(s) : typeof s === \'string\' ? \'\"\' + s + \'\"\' : s);}())"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "script":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 734
    const-string/jumbo v0, "WVWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    .line 759
    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    .line 609
    return-void
.end method

.method public setSupportFileSchema(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 613
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 391
    instance-of v0, p1, Lc8/AI;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 392
    check-cast v0, Lc8/AI;

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    .line 393
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    iput-object p0, v0, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 394
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Lc8/AI;

    iput-object p1, v0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 380
    instance-of v0, p1, Lc8/HI;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 381
    check-cast v0, Lc8/HI;

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    .line 382
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Lc8/HI;

    iput-object p1, v0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    goto :goto_0
.end method

.method public showLoadingView()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->showLoadingView()V

    .line 792
    :cond_0
    return-void
.end method

.method public superLoadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supportJavascriptInterface(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 631
    return-void
.end method
