.class public Lc8/ejb;
.super Landroid/widget/LinearLayout;
.source "QRView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QRView"

.field public static mLoginCallback:Lc8/xgb;


# instance fields
.field private mAuthWebView:Lc8/sjb;

.field private mQRViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->ali_auth_qrview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lc8/ejb;)Lc8/sjb;
    .locals 1
    .param p0, "x0"    # Lc8/ejb;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    return-object v0
.end method

.method static synthetic access$102(Lc8/ejb;I)I
    .locals 0
    .param p0, "x0"    # Lc8/ejb;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lc8/ejb;->mQRViewWidth:I

    return p1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lc8/ejb;->mLoginCallback:Lc8/xgb;

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/youku/phone/R$id;->ali_auth_webview:I

    invoke-virtual {p0, v0}, Lc8/ejb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/sjb;

    iput-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    .line 47
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v0, v1, v1, v1, v1}, Lc8/sjb;->setPadding(IIII)V

    .line 48
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    const-string/jumbo v1, "loginBridge"

    new-instance v2, Lc8/pib;

    invoke-direct {v2}, Lc8/pib;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    new-instance v1, Lc8/Ajb;

    invoke-direct {v1}, Lc8/Ajb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/sjb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    new-instance v1, Lc8/cjb;

    invoke-direct {v1, p0}, Lc8/cjb;-><init>(Lc8/ejb;)V

    invoke-virtual {v0, v1}, Lc8/sjb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 57
    iget-object v0, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v0}, Lc8/sjb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lc8/djb;

    invoke-direct {v1, p0}, Lc8/djb;-><init>(Lc8/ejb;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    return-void
.end method

.method public showQR(Lc8/xgb;)V
    .locals 8
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 69
    sput-object p1, Lc8/ejb;->mLoginCallback:Lc8/xgb;

    .line 70
    iget-object v2, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    if-eqz v2, :cond_1

    .line 71
    iget v2, p0, Lc8/ejb;->mQRViewWidth:I

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v2}, Lc8/sjb;->getWidth()I

    move-result v2

    iput v2, p0, Lc8/ejb;->mQRViewWidth:I

    .line 74
    :cond_0
    invoke-virtual {p0}, Lc8/ejb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .local v1, "screenDensity":F
    sget-object v2, Lc8/zgb;->qrCodeLoginUrl:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "qrCodeUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&qrwidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/ejb;->mQRViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v2, "QRView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qr width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v4}, Lc8/sjb;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v4}, Lc8/sjb;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lc8/ejb;->mAuthWebView:Lc8/sjb;

    invoke-virtual {v2, v0}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lc8/ejb;->requestLayout()V

    .line 81
    .end local v0    # "qrCodeUrl":Ljava/lang/String;
    .end local v1    # "screenDensity":F
    :cond_1
    return-void
.end method
