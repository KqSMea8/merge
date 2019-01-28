.class public Lc8/DD;
.super Lcom/uc/webview/export/WebView;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/webview/IWVWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BD;,
        Lc8/zD;,
        Lc8/CD;,
        Lc8/AD;,
        Lc8/yD;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUCWebView"

.field private static UC_CORE_URL:Ljava/lang/String;

.field private static UC_CORE_URL_DEBUG:Ljava/lang/String;

.field private static UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

.field private static UC_PLAYER_URL:Ljava/lang/String;

.field private static evaluateJavascriptSupported:Z

.field private static fromType:I

.field private static isUCSDKSupport:Z

.field private static mUseAliNetwork:Z

.field private static mUseSystemWebView:Z

.field private static pattern:Ljava/util/regex/Pattern;


# instance fields
.field public bizCode:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Lc8/hE;

.field private isLive:Z

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

.field private mH5MonitorCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mIsCoreDestroy:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mPageStart:J

.field private mPopupController:Lc8/jI;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field private popupClickListener:Landroid/view/View$OnClickListener;

.field protected supportDownload:Z

.field private ucParam:Ljava/lang/String;

.field protected webChromeClient:Lc8/oD;

.field protected webViewClient:Lc8/FD;

.field private wvSecurityFilter:Lc8/MD;

.field private wvUIModel:Lc8/xI;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    sput-object v3, Lc8/DD;->pattern:Ljava/util/regex/Pattern;

    .line 102
    sput-boolean v2, Lc8/DD;->isUCSDKSupport:Z

    .line 106
    const/16 v3, 0x46

    sput v3, Lc8/DD;->fromType:I

    .line 116
    const-string/jumbo v3, "https://gw.alicdn.com/bao/uploaded/LB1Sn2yfnnI8KJjy0FfXXcdoVXa.zip"

    sput-object v3, Lc8/DD;->UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

    .line 117
    const-string/jumbo v3, "https://gw.alicdn.com/bao/uploaded/LB1Sn2yfnnI8KJjy0FfXXcdoVXa.zip"

    sput-object v3, Lc8/DD;->UC_CORE_URL_DEBUG:Ljava/lang/String;

    .line 118
    const-string/jumbo v3, "https://gw.alicdn.com/bao/uploaded/LB1Sn2yfnnI8KJjy0FfXXcdoVXa.zip"

    sput-object v3, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    .line 128
    const-string/jumbo v3, "https://gw.alicdn.com/bao/uploaded/LB17mLJRFXXXXc1XpXXXXXXXXXX.zip"

    sput-object v3, Lc8/DD;->UC_PLAYER_URL:Ljava/lang/String;

    .line 134
    sput-boolean v1, Lc8/DD;->mUseAliNetwork:Z

    .line 139
    sput-boolean v2, Lc8/DD;->mUseSystemWebView:Z

    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    :goto_0
    sput-boolean v1, Lc8/DD;->evaluateJavascriptSupported:Z

    .line 149
    :try_start_0
    const-string/jumbo v1, "x86"

    invoke-static {v1}, Lc8/cD;->isArchContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string/jumbo v1, "WVUCUtils"

    const-string/jumbo v2, "ISX86"

    const-wide/16 v4, 0x1

    invoke-static {v1, v2, v4, v5}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 151
    sget-object v1, Lc8/DD;->UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

    sput-object v1, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    .line 152
    const-string/jumbo v1, "WVUCWebView"

    const-string/jumbo v2, "UCCore use x86 core"

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    :try_start_1
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v0

    .line 165
    .local v0, "config":Lc8/xB;
    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {v0}, Lc8/xB;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v1, v2}, Lc8/DD;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_2
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "static UCCore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .end local v0    # "config":Lc8/xB;
    :cond_0
    move v1, v2

    .line 141
    goto :goto_0

    .line 153
    :cond_1
    :try_start_2
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    sget-object v1, Lc8/DD;->UC_CORE_URL_DEBUG:Ljava/lang/String;

    sput-object v1, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "WVUCUtils"

    const-string/jumbo v2, "ISX86"

    const-wide/16 v4, 0x2

    invoke-static {v1, v2, v4, v5}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    const-string/jumbo v1, "WVUCWebView"

    const-string/jumbo v2, "UCCore use debug core"

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 159
    :cond_2
    const-string/jumbo v1, "WVUCUtils"

    const-string/jumbo v2, "ISX86"

    const-wide/16 v4, 0x2

    invoke-static {v1, v2, v4, v5}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 168
    .restart local v0    # "config":Lc8/xB;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v1, v2}, Lc8/DD;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 171
    :catch_1
    move-exception v1

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v1}, Lc8/DD;->initUCLIb(Landroid/content/Context;)Z

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-static {p1}, Lc8/DD;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->bizCode:Ljava/lang/String;

    .line 108
    iput-boolean v4, p0, Lc8/DD;->isLive:Z

    .line 109
    iput-boolean v4, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 176
    iput-object v2, p0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    .line 177
    iput-object v2, p0, Lc8/DD;->jsPatchListener:Lc8/CF;

    .line 180
    iput-object v2, p0, Lc8/DD;->mHandler:Landroid/os/Handler;

    .line 184
    iput-boolean v3, p0, Lc8/DD;->supportDownload:Z

    .line 185
    const/16 v0, 0x3e8

    iput v0, p0, Lc8/DD;->mWvNativeCallbackId:I

    .line 187
    iput-object v2, p0, Lc8/DD;->dataOnActive:Ljava/lang/String;

    .line 189
    iput-boolean v3, p0, Lc8/DD;->longPressSaveImage:Z

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->ucParam:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    .line 193
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Lc8/DD;->mPopupMenuTags:[Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 196
    new-instance v0, Lc8/rD;

    invoke-direct {v0, p0}, Lc8/rD;-><init>(Lc8/DD;)V

    iput-object v0, p0, Lc8/DD;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 224
    iput-object v2, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    .line 225
    iput-wide v6, p0, Lc8/DD;->onErrorTime:J

    .line 1254
    iput-boolean v3, p0, Lc8/DD;->isUser:Z

    .line 1255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    .line 1323
    iput-object v2, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 1410
    iput-wide v6, p0, Lc8/DD;->mPageStart:J

    .line 262
    iput-object p1, p0, Lc8/DD;->context:Landroid/content/Context;

    .line 263
    invoke-direct {p0}, Lc8/DD;->init()V

    .line 264
    return-void

    .line 193
    :cond_0
    const-string/jumbo v0, "Save to album"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-static {p1}, Lc8/DD;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->bizCode:Ljava/lang/String;

    .line 108
    iput-boolean v4, p0, Lc8/DD;->isLive:Z

    .line 109
    iput-boolean v4, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 176
    iput-object v2, p0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    .line 177
    iput-object v2, p0, Lc8/DD;->jsPatchListener:Lc8/CF;

    .line 180
    iput-object v2, p0, Lc8/DD;->mHandler:Landroid/os/Handler;

    .line 184
    iput-boolean v3, p0, Lc8/DD;->supportDownload:Z

    .line 185
    const/16 v0, 0x3e8

    iput v0, p0, Lc8/DD;->mWvNativeCallbackId:I

    .line 187
    iput-object v2, p0, Lc8/DD;->dataOnActive:Ljava/lang/String;

    .line 189
    iput-boolean v3, p0, Lc8/DD;->longPressSaveImage:Z

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->ucParam:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    .line 193
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Lc8/DD;->mPopupMenuTags:[Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 196
    new-instance v0, Lc8/rD;

    invoke-direct {v0, p0}, Lc8/rD;-><init>(Lc8/DD;)V

    iput-object v0, p0, Lc8/DD;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 224
    iput-object v2, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    .line 225
    iput-wide v6, p0, Lc8/DD;->onErrorTime:J

    .line 1254
    iput-boolean v3, p0, Lc8/DD;->isUser:Z

    .line 1255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    .line 1323
    iput-object v2, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 1410
    iput-wide v6, p0, Lc8/DD;->mPageStart:J

    .line 256
    iput-object p1, p0, Lc8/DD;->context:Landroid/content/Context;

    .line 257
    invoke-direct {p0}, Lc8/DD;->init()V

    .line 258
    return-void

    .line 193
    :cond_0
    const-string/jumbo v0, "Save to album"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-static {p1}, Lc8/DD;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->bizCode:Ljava/lang/String;

    .line 108
    iput-boolean v4, p0, Lc8/DD;->isLive:Z

    .line 109
    iput-boolean v4, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 176
    iput-object v2, p0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    .line 177
    iput-object v2, p0, Lc8/DD;->jsPatchListener:Lc8/CF;

    .line 180
    iput-object v2, p0, Lc8/DD;->mHandler:Landroid/os/Handler;

    .line 184
    iput-boolean v3, p0, Lc8/DD;->supportDownload:Z

    .line 185
    const/16 v0, 0x3e8

    iput v0, p0, Lc8/DD;->mWvNativeCallbackId:I

    .line 187
    iput-object v2, p0, Lc8/DD;->dataOnActive:Ljava/lang/String;

    .line 189
    iput-boolean v3, p0, Lc8/DD;->longPressSaveImage:Z

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DD;->ucParam:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    .line 193
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u5230\u76f8\u518c"

    :goto_0
    aput-object v0, v1, v4

    iput-object v1, p0, Lc8/DD;->mPopupMenuTags:[Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 196
    new-instance v0, Lc8/rD;

    invoke-direct {v0, p0}, Lc8/rD;-><init>(Lc8/DD;)V

    iput-object v0, p0, Lc8/DD;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 224
    iput-object v2, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    .line 225
    iput-wide v6, p0, Lc8/DD;->onErrorTime:J

    .line 1254
    iput-boolean v3, p0, Lc8/DD;->isUser:Z

    .line 1255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    .line 1323
    iput-object v2, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 1410
    iput-wide v6, p0, Lc8/DD;->mPageStart:J

    .line 250
    iput-object p1, p0, Lc8/DD;->context:Landroid/content/Context;

    .line 251
    invoke-direct {p0}, Lc8/DD;->init()V

    .line 252
    return-void

    .line 193
    :cond_0
    const-string/jumbo v0, "Save to album"

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/DD;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/DD;->mPopupMenuTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/DD;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/DD;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/DD;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/DD;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/DD;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lc8/DD;)Lc8/jI;
    .locals 1
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/DD;->mPopupController:Lc8/jI;

    return-object v0
.end method

.method static synthetic access$202(Lc8/DD;Lc8/jI;)Lc8/jI;
    .locals 0
    .param p0, "x0"    # Lc8/DD;
    .param p1, "x1"    # Lc8/jI;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/DD;->mPopupController:Lc8/jI;

    return-object p1
.end method

.method static synthetic access$500(Lc8/DD;)Z
    .locals 1
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    iget-boolean v0, p0, Lc8/DD;->longPressSaveImage:Z

    return v0
.end method

.method static synthetic access$600(Lc8/DD;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/DD;->popupClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$701(Lc8/DD;)V
    .locals 0
    .param p0, "x0"    # Lc8/DD;

    .prologue
    .line 93
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    return-void
.end method

.method static synthetic access$802(Lc8/DD;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/DD;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lc8/DD;->mIsCoreDestroy:Z

    return p1
.end method

.method static synthetic access$900(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lc8/DD;->onUCMCoreSwitched(Landroid/content/Context;)V

    return-void
.end method

.method public static getFromType()I
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0x46

    sput v0, Lc8/DD;->fromType:I

    .line 277
    invoke-static {}, Lc8/DD;->getUCSDKSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, Lc8/DD;->getUseTaobaoNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    :goto_0
    sput v0, Lc8/DD;->fromType:I

    .line 284
    :cond_0
    :goto_1
    sget v0, Lc8/DD;->fromType:I

    return v0

    .line 278
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 281
    :cond_2
    sget-boolean v0, Lc8/DD;->mUseSystemWebView:Z

    if-nez v0, :cond_0

    .line 282
    const/16 v0, 0x47

    sput v0, Lc8/DD;->fromType:I

    goto :goto_1
.end method

.method public static getUCSDKSupport()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lc8/DD;->isUCSDKSupport:Z

    return v0
.end method

.method public static getUseTaobaoNetwork()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lc8/DD;->mUseAliNetwork:Z

    return v0
.end method

.method private init()V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 612
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/DD;->mIsCoreDestroy:Z

    .line 613
    const-string/jumbo v14, "WVUCWebView"

    const-string/jumbo v15, "uc webview init "

    invoke-static {v14, v15}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string/jumbo v14, "WVUCWebView"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 615
    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->mHandler:Landroid/os/Handler;

    .line 616
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/DD;->isLive:Z

    .line 620
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-wide v10, v14, Lc8/EB;->ucsdk_alinetwork_rate:D

    .line 621
    .local v10, "rate":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    cmpl-double v14, v10, v14

    if-lez v14, :cond_e

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Lc8/DD;->setUseTaobaoNetwork(Z)V

    .line 623
    const-string/jumbo v14, "WVUCWebView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Webview init setUseTaobaoNetwork ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lc8/DD;->getUseTaobaoNetwork()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v14, v14, Lc8/EB;->ucParam:Ljava/lang/String;

    const-string/jumbo v15, "skip_old_extra_kernel=true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 627
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v14, v14, Lc8/EB;->ucParam:Ljava/lang/String;

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V

    .line 630
    :cond_0
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v14, v14, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    sget-object v14, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v15, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v15, v15, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 631
    sget-object v14, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v15, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v15, v15, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    new-instance v16, Lc8/tD;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/tD;-><init>(Lc8/DD;)V

    invoke-static/range {v14 .. v16}, Lcom/uc/webview/export/extension/UCCore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 640
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v14, v14, Lc8/EB;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 641
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v14, v14, Lc8/EB;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    sput-object v14, Lc8/DD;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-static {v14}, Lc8/qI;->disableAccessibility(Landroid/content/Context;)V

    .line 649
    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v9

    .line 650
    .local v9, "settings":Lcom/uc/webview/export/WebSettings;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 651
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 652
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x12

    if-ge v14, v15, :cond_3

    .line 653
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 655
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/localstorage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 656
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 657
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v14

    invoke-virtual {v14}, Lc8/xB;->getAppTag()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "apptag":Ljava/lang/String;
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v14

    invoke-virtual {v14}, Lc8/xB;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, "appversion":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "UA":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 661
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 662
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " AliApp("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    :cond_4
    const-string/jumbo v14, "UCBS/"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 665
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " UCBS/2.11.1.1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " WindVane/8.3.0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 669
    :cond_6
    const/4 v14, -0x1

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 670
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 672
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xe

    if-lt v14, v15, :cond_f

    .line 673
    const/16 v14, 0x64

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 678
    :goto_2
    sget-boolean v14, Lc8/DD;->mUseAliNetwork:Z

    if-eqz v14, :cond_7

    .line 679
    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 680
    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v14

    invoke-virtual {v14}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v12

    .line 681
    .local v12, "settingsExt":Lcom/uc/webview/export/extension/UCSettings;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/uc/webview/export/extension/UCSettings;->setUCCookieType(I)V

    .line 685
    .end local v12    # "settingsExt":Lcom/uc/webview/export/extension/UCSettings;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 686
    :cond_8
    const-string/jumbo v14, "WVUCWebView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "init  CurrentViewCoreType()= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v14, 0x1

    sput-boolean v14, Lc8/DD;->isUCSDKSupport:Z

    .line 688
    new-instance v14, Lc8/VC;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lc8/VC;-><init>(Landroid/content/Context;)V

    new-instance v15, Lc8/WC;

    invoke-direct {v15}, Lc8/WC;-><init>()V

    invoke-static {v14, v15}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 699
    :cond_9
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setEnableAdblock(Z)V

    .line 700
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setEnableDispatcher(Z)V

    .line 701
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalEnableUCProxy(Z)V

    .line 702
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setEnableMultiThreadParser(Z)V

    .line 703
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setEnableCustomErrorPage(Z)V

    .line 704
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setEnableUCVideoViewFullscreen(Z)V

    .line 705
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCSettings;->setForceUserScalable(I)V

    .line 707
    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string/jumbo v16, "stat_filter_list"

    new-instance v17, Ljava/lang/String;

    const-string/jumbo v18, "t1t3detail;*;100;5;_url,_t0,_t1,_t2,_t3"

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v14 .. v17}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 709
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->setPageCacheCapacity(I)V

    .line 710
    new-instance v14, Lc8/CD;

    invoke-direct {v14}, Lc8/CD;-><init>()V

    invoke-static {v14}, Lcom/uc/webview/export/extension/UCCore;->setStatDataCallback(Landroid/webkit/ValueCallback;)V

    .line 712
    new-instance v14, Lc8/FD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Lc8/FD;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 713
    new-instance v14, Lc8/oD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Lc8/oD;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lc8/DD;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v13

    .line 715
    .local v13, "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    if-eqz v13, :cond_a

    .line 716
    new-instance v14, Lc8/bD;

    invoke-direct {v14}, Lc8/bD;-><init>()V

    invoke-virtual {v13, v14}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 717
    new-instance v14, Lc8/uD;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lc8/uD;-><init>(Lc8/DD;)V

    invoke-virtual {v13, v14}, Lcom/uc/webview/export/extension/UCExtension;->setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V

    .line 737
    :cond_a
    new-instance v14, Lc8/xI;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0}, Lc8/xI;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->wvUIModel:Lc8/xI;

    .line 739
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v14

    invoke-virtual {v14}, Lc8/fE;->init()V

    .line 741
    new-instance v14, Lc8/hE;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0}, Lc8/hE;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->entryManager:Lc8/hE;

    .line 742
    new-instance v8, Lc8/SD;

    invoke-direct {v8}, Lc8/SD;-><init>()V

    .line 743
    .local v8, "event":Lc8/SD;
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/DD;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0}, Lc8/SD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 744
    const-string/jumbo v14, "AppEvent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lc8/DD;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    const-string/jumbo v14, "WVUCBase"

    const-class v15, Lc8/NC;

    invoke-static {v14, v15}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 748
    new-instance v14, Lc8/MD;

    invoke-direct {v14}, Lc8/MD;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    .line 750
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    sget v16, Lc8/qH;->WV_FORWARD_EVENT:I

    invoke-virtual/range {v14 .. v16}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 752
    new-instance v14, Lc8/CF;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lc8/CF;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->jsPatchListener:Lc8/CF;

    .line 753
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/DD;->jsPatchListener:Lc8/CF;

    sget v16, Lc8/qH;->WV_BACKWARD_EVENT:I

    invoke-virtual/range {v14 .. v16}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 756
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xa

    if-le v14, v15, :cond_b

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x11

    if-ge v14, v15, :cond_b

    .line 758
    :try_start_1
    const-string/jumbo v14, "searchBoxJavaBridge_"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 759
    const-string/jumbo v14, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 760
    const-string/jumbo v14, "accessibilityTraversal"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 766
    :cond_b
    :goto_3
    new-instance v14, Lc8/vD;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lc8/vD;-><init>(Lc8/DD;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/DD;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 801
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 803
    .local v6, "currentTime":J
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v14

    invoke-interface {v14, v6, v7}, Lc8/cG;->didWebViewInitAtTime(J)V

    .line 806
    .end local v6    # "currentTime":J
    :cond_c
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xb

    if-lt v14, v15, :cond_d

    invoke-static {}, Lc8/qI;->shouldDisableHardwareRenderInLayer()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 808
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lc8/DD;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 814
    :cond_d
    :goto_4
    invoke-direct/range {p0 .. p0}, Lc8/DD;->setAcceptThirdPartyCookies()V

    .line 816
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 817
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 823
    :goto_5
    new-instance v14, Lc8/ZD;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lc8/ZD;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string/jumbo v15, "__windvane__"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lc8/DD;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    return-void

    .line 621
    .end local v2    # "UA":Ljava/lang/String;
    .end local v3    # "apptag":Ljava/lang/String;
    .end local v4    # "appversion":Ljava/lang/String;
    .end local v8    # "event":Lc8/SD;
    .end local v9    # "settings":Lcom/uc/webview/export/WebSettings;
    .end local v13    # "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v5

    .line 644
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "WVUCWebView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Pattern complile Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "UA":Ljava/lang/String;
    .restart local v3    # "apptag":Ljava/lang/String;
    .restart local v4    # "appversion":Ljava/lang/String;
    .restart local v9    # "settings":Lcom/uc/webview/export/WebSettings;
    :cond_f
    sget-object v14, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-virtual {v9, v14}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    goto/16 :goto_2

    .line 761
    .restart local v8    # "event":Lc8/SD;
    .restart local v13    # "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    :catch_1
    move-exception v5

    .line 762
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "WVUCWebView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "removeJavascriptInterface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 809
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    .line 810
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 819
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_10
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto :goto_5
.end method

.method public static initUCLIb(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/DD;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .param p0, "ucsdkappkeySec"    # [Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 349
    const-string/jumbo v4, "WVUCWebView"

    const-string/jumbo v7, "UCSDK initUCLIb begin "

    invoke-static {v4, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v4, v4, Lc8/EB;->useSystemWebView:Z

    invoke-static {v4}, Lc8/DD;->setUseSystemWebView(Z)V

    .line 354
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    .line 360
    :goto_0
    const-string/jumbo v4, "WVUCWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UCSDK initUCLIb UseSystemWebView "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lc8/DD;->mUseSystemWebView:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-boolean v4, Lc8/DD;->isUCSDKSupport:Z

    if-eqz v4, :cond_1

    move v4, v5

    .line 483
    :goto_1
    return v4

    .line 357
    :cond_0
    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    goto :goto_0

    .line 373
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v2, v4, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    .line 374
    .local v2, "ucCoreUrl":Ljava/lang/String;
    invoke-static {v2}, Lc8/DD;->setUcCoreUrl(Ljava/lang/String;)V

    .line 376
    if-eqz p0, :cond_2

    array-length v4, p0

    if-lez v4, :cond_2

    .line 377
    const-string/jumbo v4, "provided_keys"

    invoke-static {v4, p0}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    .line 381
    :cond_2
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/Object;

    .line 382
    .local v1, "logConfig":[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v1, v4

    .line 383
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v1, v4

    .line 384
    const/4 v4, 0x2

    new-instance v7, Lc8/sD;

    invoke-direct {v7}, Lc8/sD;-><init>()V

    aput-object v7, v1, v4

    .line 422
    const/4 v4, 0x3

    const-string/jumbo v7, "[all]"

    aput-object v7, v1, v4

    .line 423
    const/4 v4, 0x4

    const-string/jumbo v7, "[all]"

    aput-object v7, v1, v4

    .line 427
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v4

    invoke-virtual {v4}, Lc8/xB;->getUcLibDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 429
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v4, v4, Lc8/EB;->ucParam:Ljava/lang/String;

    const-string/jumbo v7, "skip_old_extra_kernel=true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 430
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v4, v4, Lc8/EB;->ucParam:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V

    .line 433
    :cond_3
    const-string/jumbo v4, "dexFilePath"

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v7

    invoke-virtual {v7}, Lc8/xB;->getUcLibDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v3

    .line 446
    .local v3, "uctask":Lcom/uc/webview/export/utility/SetupTask;
    :goto_2
    const-string/jumbo v4, "CONTEXT"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "VIDEO_AC"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "AC"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "core_ver_excludes"

    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v8, v8, Lc8/EB;->excludeUCVersions:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "MULTI_CORE_TYPE"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "SYSTEM_WEBVIEW"

    sget-boolean v8, Lc8/DD;->mUseSystemWebView:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "WEBVIEW_POLICY"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "loadPolicy"

    const-string/jumbo v8, "SPECIFIED_ONLY"

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "VERIFY_POLICY"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "delete_core"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "log_conf"

    invoke-virtual {v4, v7, v1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "wait_fallback_sys"

    const/16 v8, 0xfa0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "skip_old_extra_kernel"

    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v8, v8, Lc8/EB;->ucSkipOldKernel:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "exception"

    new-instance v8, Lc8/yD;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lc8/yD;-><init>(Lc8/rD;)V

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "success"

    new-instance v8, Lc8/AD;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lc8/AD;-><init>(Lc8/rD;)V

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v4}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 478
    const-string/jumbo v4, "WVUCWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "final UCCore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1    # "logConfig":[Ljava/lang/Object;
    .end local v2    # "ucCoreUrl":Ljava/lang/String;
    .end local v3    # "uctask":Lcom/uc/webview/export/utility/SetupTask;
    :goto_3
    sget-boolean v4, Lc8/DD;->mUseSystemWebView:Z

    if-nez v4, :cond_5

    move v4, v5

    goto/16 :goto_1

    .line 438
    .restart local v1    # "logConfig":[Ljava/lang/Object;
    .restart local v2    # "ucCoreUrl":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v4, v4, Lc8/EB;->ucParam:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v4, "dlChecker"

    new-instance v7, Lc8/zD;

    invoke-direct {v7}, Lc8/zD;-><init>()V

    invoke-static {v4, v7}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    const-string/jumbo v7, "ucmUpdUrl"

    sget-object v8, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "uctask":Lcom/uc/webview/export/utility/SetupTask;
    goto/16 :goto_2

    .line 479
    .end local v1    # "logConfig":[Ljava/lang/Object;
    .end local v2    # "ucCoreUrl":Ljava/lang/String;
    .end local v3    # "uctask":Lcom/uc/webview/export/utility/SetupTask;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WVUCWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UCCore init fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move v4, v6

    .line 483
    goto/16 :goto_1
.end method

.method public static isNeedCookie(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v1, 0x1

    .line 496
    .local v1, "isneedcookie":Z
    :try_start_0
    sget-object v3, Lc8/DD;->pattern:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_0

    .line 497
    sget-object v3, Lc8/DD;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 498
    .local v2, "matcher":Ljava/util/regex/Matcher;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 506
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pattern complile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isUseSystemWebView(Landroid/content/Context;)Z
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 228
    sget-boolean v5, Lc8/DD;->mUseSystemWebView:Z

    .line 229
    .local v5, "useSystemView":Z
    sget-boolean v6, Lc8/DD;->mUseSystemWebView:Z

    if-nez v6, :cond_1

    .line 231
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v6

    const-string/jumbo v7, "WindVane"

    const-string/jumbo v8, "useSysWebViewBizList"

    const-string/jumbo v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "useSysWebViewBizList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 233
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "classes":[Ljava/lang/String;
    array-length v2, v1

    .line 235
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 237
    aget-object v6, v1, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    const/4 v5, 0x1

    .line 236
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "useSysWebViewBizList":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 245
    :cond_1
    return v5
.end method

.method private static onUCMCoreSwitched(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 310
    const-string/jumbo v1, "WVUCWebView"

    const-string/jumbo v2, "UCSDK init onUCMCoreSwitched "

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sput-boolean v3, Lc8/DD;->isUCSDKSupport:Z

    .line 313
    new-instance v1, Lc8/VC;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/VC;-><init>(Landroid/content/Context;)V

    new-instance v2, Lc8/WC;

    invoke-direct {v2}, Lc8/WC;-><init>()V

    invoke-static {v1, v2}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 316
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v3}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 326
    :goto_0
    :try_start_0
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    sget-object v2, Lc8/DD;->UC_PLAYER_URL:Ljava/lang/String;

    new-instance v3, Lc8/zD;

    invoke-direct {v3}, Lc8/zD;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    return-void

    .line 319
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UCCore update UCPlayer failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setAcceptThirdPartyCookies()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {}, Lc8/DD;->getCoreType()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {}, Lc8/DD;->getCoreType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1243
    :try_start_0
    invoke-virtual {p0}, Lc8/DD;->getView()Landroid/view/View;

    move-result-object v0

    .line 1244
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1245
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    check-cast v0, Landroid/webkit/WebView;

    .end local v0    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setUcCoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "ucCoreUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sput-object p0, Lc8/DD;->UC_CORE_URL:Ljava/lang/String;

    .line 273
    :cond_0
    return-void
.end method

.method public static setUseSystemWebView(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 292
    sput-boolean p0, Lc8/DD;->mUseSystemWebView:Z

    .line 293
    const/16 v0, 0x46

    sput v0, Lc8/DD;->fromType:I

    .line 294
    return-void
.end method

.method public static setUseTaobaoNetwork(Z)V
    .locals 0
    .param p0, "UseTaobaoNetwork"    # Z

    .prologue
    .line 301
    sput-boolean p0, Lc8/DD;->mUseAliNetwork:Z

    .line 302
    return-void
.end method


# virtual methods
.method public OnScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1037
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v1, p1, p2, p3, p4}, Lc8/hE;->onScrollChanged(IIII)V

    .line 1041
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->onScrollChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    .line 888
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v0, p1, p2}, Lc8/hE;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    .line 891
    :cond_0
    return-void
.end method

.method public back()Z
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lc8/DD;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lc8/DD;->goBack()V

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 1233
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    .line 1150
    return-void
.end method

.method public clearH5MonitorData()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1395
    :cond_0
    return-void
.end method

.method public containsH5MonitorData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1403
    iget-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 1404
    const/4 v0, 0x0

    .line 1407
    :goto_0
    return v0

    .line 1406
    :cond_0
    iget-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1407
    .local v0, "isContainsKey":Z
    goto :goto_0
.end method

.method public coreDestroy()V
    .locals 6

    .prologue
    const/16 v4, 0x13

    .line 972
    :try_start_0
    iget-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1003
    :try_start_1
    iget-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    if-nez v1, :cond_0

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    const-string/jumbo v1, "x86"

    invoke-static {v1}, Lc8/cD;->isArchContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1007
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lc8/xD;

    invoke-direct {v2, p0}, Lc8/xD;-><init>(Lc8/DD;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 1015
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 1016
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WVUCWebView::coreDestroy finally Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 976
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-super {p0, v1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 977
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/DD;->webViewClient:Lc8/FD;

    .line 979
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    .line 980
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/DD;->context:Landroid/content/Context;

    .line 981
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fE;->tryToRunTailBridges()V

    .line 982
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v1}, Lc8/hE;->onDestroy()V

    .line 983
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/DD;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 984
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/DD;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 986
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0xbbb

    invoke-virtual {v1, v2}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 987
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    iget-object v2, p0, Lc8/DD;->wvSecurityFilter:Lc8/MD;

    invoke-virtual {v1, v2}, Lc8/qH;->removeEventListener(Lc8/pH;)V

    .line 988
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    iget-object v2, p0, Lc8/DD;->jsPatchListener:Lc8/CF;

    invoke-virtual {v1, v2}, Lc8/qH;->removeEventListener(Lc8/pH;)V

    .line 989
    invoke-virtual {p0}, Lc8/DD;->removeAllViews()V

    .line 990
    sget-object v1, Lc8/DD;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    .line 991
    sget-object v1, Lc8/DD;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 994
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/DD;->isLive:Z

    .line 996
    invoke-virtual {p0}, Lc8/DD;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lc8/DD;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 997
    invoke-virtual {p0}, Lc8/DD;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    :cond_4
    :try_start_3
    iget-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    if-nez v1, :cond_0

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_5

    const-string/jumbo v1, "x86"

    invoke-static {v1}, Lc8/cD;->isArchContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1006
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1007
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lc8/xD;

    invoke-direct {v2, p0}, Lc8/xD;-><init>(Lc8/DD;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1019
    :catch_1
    move-exception v0

    .line 1020
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WVUCWebView::coreDestroy finally Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 1015
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 1016
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 999
    :catch_2
    move-exception v0

    .line 1000
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WVUCWebView::coreDestroy Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1003
    :try_start_6
    iget-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    if-nez v1, :cond_0

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_6

    const-string/jumbo v1, "x86"

    invoke-static {v1}, Lc8/cD;->isArchContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1006
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1007
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lc8/xD;

    invoke-direct {v2, p0}, Lc8/xD;-><init>(Lc8/DD;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1019
    :catch_3
    move-exception v0

    .line 1020
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WVUCWebView::coreDestroy finally Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :cond_6
    :try_start_7
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 1015
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 1016
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1002
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 1003
    :try_start_8
    iget-boolean v2, p0, Lc8/DD;->mIsCoreDestroy:Z

    if-nez v2, :cond_7

    .line 1005
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_8

    const-string/jumbo v2, "x86"

    invoke-static {v2}, Lc8/cD;->isArchContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1006
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1007
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lc8/xD;

    invoke-direct {v3, p0}, Lc8/xD;-><init>(Lc8/DD;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 1021
    :cond_7
    :goto_1
    throw v1

    .line 1014
    :cond_8
    :try_start_9
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/DD;->mIsCoreDestroy:Z

    .line 1016
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 1019
    :catch_4
    move-exception v0

    .line 1020
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WVUCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WVUCWebView::coreDestroy finally Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v3, 0x1

    .line 1260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1261
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1263
    .local v2, "pointerId":I
    if-nez v0, :cond_1

    .line 1264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lc8/DD;->dx:F

    .line 1265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lc8/DD;->dy:F

    .line 1266
    iget-boolean v4, p0, Lc8/DD;->isUser:Z

    if-nez v4, :cond_2

    .line 1267
    iget-object v4, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1289
    :cond_0
    :goto_0
    return v3

    .line 1271
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1272
    iget-boolean v4, p0, Lc8/DD;->isUser:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lc8/DD;->dy:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_0

    .line 1289
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 1276
    :cond_3
    if-ne v0, v3, :cond_2

    .line 1277
    iget-boolean v4, p0, Lc8/DD;->isUser:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lc8/DD;->dy:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 1278
    iput-boolean v3, p0, Lc8/DD;->isUser:Z

    goto :goto_0

    .line 1281
    :cond_4
    iget-object v3, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1282
    .local v1, "down":Landroid/view/MotionEvent;
    if-eqz v1, :cond_2

    .line 1283
    invoke-super {p0, v1}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1284
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1285
    iget-object v3, p0, Lc8/DD;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1
.end method

.method public coreOnScrollChanged(IIII)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1049
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/DD;->OnScrollChanged(IIII)V

    .line 1050
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    .line 1051
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/DD;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 829
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
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
    const/16 v5, 0xb

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 833
    const-string/jumbo v0, "WVUCWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "evaluateJavascript : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-boolean v0, p0, Lc8/DD;->isLive:Z

    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    :cond_2
    sget-boolean v0, Lc8/DD;->evaluateJavascriptSupported:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 844
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 847
    sput-boolean v3, Lc8/DD;->evaluateJavascriptSupported:Z

    .line 848
    invoke-virtual {p0, p1, p2}, Lc8/DD;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 851
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lc8/DD;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 852
    sput-boolean v3, Lc8/DD;->evaluateJavascriptSupported:Z

    .line 853
    invoke-virtual {p0, p1, p2}, Lc8/DD;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 854
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "exception"

    invoke-static {v0, p1, v1}, Lc8/EF;->commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_4
    if-nez p2, :cond_5

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/DD;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_5
    invoke-virtual {p0, p1, p2}, Lc8/DD;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1108
    invoke-virtual {p0}, Lc8/DD;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1113
    invoke-virtual {p0}, Lc8/DD;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lc8/DD;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1072
    const/4 v0, 0x0

    .line 1074
    .local v0, "url":Ljava/lang/String;
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1078
    :goto_0
    if-nez v0, :cond_0

    .line 1079
    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUrl by currentUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    .line 1083
    .end local v0    # "url":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1076
    .restart local v0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "WVUCWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebView had destroyed,forbid to be called getUrl. currentUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :cond_0
    const-string/jumbo v1, "WVUCWebView"

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

    goto :goto_1
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lc8/DD;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getH5MonitorData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1353
    iget-object v2, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-object v1

    .line 1356
    :cond_1
    iget-object v2, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1357
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getH5MonitorDatas()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v8, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v8, :cond_0

    .line 1365
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1385
    :goto_0
    return-object v2

    .line 1368
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1369
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v8, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1370
    .local v4, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1371
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    .line 1373
    .local v6, "temp":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1374
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1375
    .local v5, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1376
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1377
    .local v7, "tempKey":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1379
    .end local v7    # "tempKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1382
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "temp":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1383
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "resources"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v0, p1}, Lc8/hE;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lc8/DD;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1122
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1

    .prologue
    .line 1117
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWvUIModel()Lc8/xI;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1178
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1228
    :cond_0
    :goto_0
    return v2

    .line 1180
    :pswitch_0
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v3}, Lc8/xI;->isShowLoading()Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->showLoadingView()V

    .line 1182
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1, v2}, Lc8/xI;->switchNaviBar(I)V

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v3}, Lc8/xI;->isShowLoading()Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1188
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->hideLoadingView()V

    .line 1189
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->resetNaviBar()V

    .line 1191
    :cond_3
    iget-wide v4, p0, Lc8/DD;->onErrorTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/DD;->onErrorTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 1192
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->hideErrorPage()V

    goto :goto_0

    .line 1198
    :pswitch_2
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v3}, Lc8/xI;->loadErrorPage()V

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/DD;->onErrorTime:J

    .line 1200
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v3}, Lc8/xI;->isShowLoading()Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->hideLoadingView()V

    goto :goto_0

    .line 1206
    :pswitch_3
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    iget-object v3, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v3}, Lc8/xI;->isShowLoading()Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v1}, Lc8/xI;->hideLoadingView()V

    goto/16 :goto_0

    .line 1213
    :pswitch_4
    :try_start_0
    iget-object v3, p0, Lc8/DD;->context:Landroid/content/Context;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    :goto_1
    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WVUCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NOTIFY_SAVE_IMAGE_SUCCESS fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string/jumbo v1, "Success to save picture"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1221
    :pswitch_5
    :try_start_2
    iget-object v3, p0, Lc8/DD;->context:Landroid/content/Context;

    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    :goto_2
    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1222
    :catch_1
    move-exception v0

    .line 1223
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WVUCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NOTIFY_SAVE_IMAGE_FAIL fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    const-string/jumbo v1, "Failed to save picture"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1178
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
    .line 1142
    iget-object v0, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->hideLoadingView()V

    .line 1145
    :cond_0
    return-void
.end method

.method public insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    .end local p3    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 1335
    .restart local p3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 1336
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 1338
    :cond_1
    iget-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1339
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1340
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1341
    .restart local v0    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/DD;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p3, ""

    .end local p3    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lc8/DD;->isLive:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-static {p1}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v3

    invoke-virtual {v3}, Lc8/OB;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "forbiddenDomainRedirectURL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    const/16 v3, 0x192

    invoke-virtual {p0, v3, p1}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 557
    :cond_1
    :try_start_0
    invoke-super {p0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/rI;->getWVSchemeIntercepter()Lc8/sI;

    move-result-object v2

    .line 565
    .local v2, "schemeIntercepter":Lc8/sI;
    if-eqz v2, :cond_3

    .line 566
    invoke-interface {v2, p1}, Lc8/sI;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 570
    :cond_3
    :try_start_1
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lc8/ZC;->onUrlChange(Lc8/DD;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v3, "WVUCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 573
    :catch_1
    move-exception v0

    .line 574
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 899
    packed-switch p1, :pswitch_data_0

    .line 910
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v1, p1, p2, p3}, Lc8/hE;->onActivityResult(IILandroid/content/Intent;)V

    .line 913
    :cond_1
    return-void

    .line 901
    :pswitch_0
    iget-object v1, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    iget-object v1, v1, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 903
    invoke-static {p2, p3}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 904
    .local v0, "result":[Landroid/net/Uri;
    iget-object v1, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    iget-object v1, v1, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 905
    iget-object v1, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    const/4 v2, 0x0

    iput-object v2, v1, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 899
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1414
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 1415
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/ZC;->removeWebview(Lc8/DD;)V

    .line 1416
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1168
    iget-object v1, p0, Lc8/DD;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1170
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1171
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    iget-object v1, p0, Lc8/DD;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1174
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
    .line 1027
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v0}, Lc8/hE;->onPause()V

    .line 1030
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1031
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 1033
    :cond_1
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 1034
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1055
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lc8/DD;->entryManager:Lc8/hE;

    invoke-virtual {v1}, Lc8/hE;->onResume()V

    .line 1058
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 1060
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :cond_1
    :goto_0
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0xbba

    invoke-virtual {v1, v2}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 1066
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/DD;->isLive:Z

    .line 1067
    return-void

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 8
    .param p1, "arg0"    # I

    .prologue
    .line 941
    if-nez p1, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_0

    .line 942
    invoke-virtual {p0}, Lc8/DD;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 943
    .local v1, "context":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 944
    check-cast v0, Landroid/app/Activity;

    .line 945
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 946
    .local v3, "w":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 947
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 948
    .local v2, "v":Landroid/view/View;
    new-instance v4, Lc8/wD;

    invoke-direct {v4, p0, v2}, Lc8/wD;-><init>(Lc8/DD;Landroid/view/View;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 957
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "w":Landroid/view/Window;
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->onWindowVisibilityChanged(I)V

    .line 958
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {p1}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v3

    invoke-virtual {v3}, Lc8/OB;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "forbiddenDomainRedirectURL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    const/16 v3, 0x192

    invoke-virtual {p0, v3, p1}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lc8/DD;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/rI;->getWVSchemeIntercepter()Lc8/sI;

    move-result-object v2

    .line 533
    .local v2, "schemeIntercepter":Lc8/sI;
    if-eqz v2, :cond_3

    .line 534
    invoke-interface {v2, p1}, Lc8/sI;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 538
    :cond_3
    :try_start_1
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lc8/ZC;->onUrlChange(Lc8/DD;Ljava/lang/String;)V

    .line 539
    const-string/jumbo v3, "WVUCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 541
    :catch_1
    move-exception v0

    .line 542
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 581
    invoke-virtual {p0}, Lc8/DD;->reload()V

    .line 582
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
    .line 870
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget v2, p0, Lc8/DD;->mWvNativeCallbackId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/DD;->mWvNativeCallbackId:I

    .line 871
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lc8/cI;->putNativeCallbak(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 872
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

    .line 878
    .local v1, "script":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lc8/DD;->loadUrl(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 1089
    iput-object p1, p0, Lc8/DD;->currentUrl:Ljava/lang/String;

    .line 1090
    const-string/jumbo v0, "WVUCWebView"

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

    .line 1091
    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1104
    iput-object p1, p0, Lc8/DD;->dataOnActive:Ljava/lang/String;

    .line 1105
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 601
    invoke-virtual {p0}, Lc8/DD;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lc8/DD;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    .line 603
    invoke-static {p1}, Lcom/uc/webview/export/extension/UCSettings;->setPageCacheCapacity(I)V

    .line 606
    :cond_0
    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 1153
    iput-boolean p1, p0, Lc8/DD;->supportDownload:Z

    .line 1154
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 1163
    invoke-virtual {p0}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 2
    .param p1, "client"    # Lcom/uc/webview/export/WebChromeClient;

    .prologue
    .line 929
    instance-of v0, p1, Lc8/oD;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 930
    check-cast v0, Lc8/oD;

    iput-object v0, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    .line 931
    iget-object v0, p0, Lc8/DD;->webChromeClient:Lc8/oD;

    iput-object p0, v0, Lc8/oD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 932
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    return-void

    .line 934
    :cond_0
    new-instance v0, Landroid/taobao/windvane/webview/WindVaneError;

    const-string/jumbo v1, "Your WebChromeClient must be extended from WVUCWebChromeClient"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 2
    .param p1, "client"    # Lcom/uc/webview/export/WebViewClient;

    .prologue
    .line 918
    instance-of v0, p1, Lc8/FD;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 919
    check-cast v0, Lc8/FD;

    iput-object v0, p0, Lc8/DD;->webViewClient:Lc8/FD;

    .line 920
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    return-void

    .line 922
    :cond_0
    new-instance v0, Landroid/taobao/windvane/webview/WindVaneError;

    const-string/jumbo v1, "Your WebViewClient must be extended from WVUCWebViewClient"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWvUIModel(Lc8/xI;)V
    .locals 0
    .param p1, "wvUIModel"    # Lc8/xI;

    .prologue
    .line 1130
    iput-object p1, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    .line 1131
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lc8/DD;->wvUIModel:Lc8/xI;

    invoke-virtual {v0}, Lc8/xI;->showLoadingView()V

    .line 1138
    :cond_0
    return-void
.end method
