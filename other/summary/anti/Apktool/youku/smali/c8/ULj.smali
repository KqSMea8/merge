.class public Lc8/ULj;
.super Landroid/app/Dialog;
.source "YoukuProvisionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TLj;,
        Lc8/SLj;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisionDialog"


# instance fields
.field private agree:Landroid/widget/Button;

.field private agreeOnclickListener:Lc8/SLj;

.field private disagree:Landroid/widget/Button;

.field private disagreeOnclickListener:Lc8/TLj;

.field private keylistener:Landroid/content/DialogInterface$OnKeyListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget v0, Lcom/youku/phone/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Lc8/PLj;

    invoke-direct {v0, p0}, Lc8/PLj;-><init>(Lc8/ULj;)V

    iput-object v0, p0, Lc8/ULj;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lc8/ULj;)Lc8/SLj;
    .locals 1
    .param p0, "x0"    # Lc8/ULj;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/ULj;->agreeOnclickListener:Lc8/SLj;

    return-object v0
.end method

.method static synthetic access$100(Lc8/ULj;)Lc8/TLj;
    .locals 1
    .param p0, "x0"    # Lc8/ULj;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/ULj;->disagreeOnclickListener:Lc8/TLj;

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lc8/ULj;->agree:Landroid/widget/Button;

    new-instance v1, Lc8/QLj;

    invoke-direct {v1, p0}, Lc8/QLj;-><init>(Lc8/ULj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lc8/ULj;->disagree:Landroid/widget/Button;

    new-instance v1, Lc8/RLj;

    invoke-direct {v1, p0}, Lc8/RLj;-><init>(Lc8/ULj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method private webviewInit()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lc8/ULj;->webView:Landroid/webkit/WebView;

    const-string/jumbo v1, "file:///android_asset/ProvisionDialog.html "

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lc8/ULj;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v1, Lcom/youku/phone/R$layout;->dialog_layout:I

    invoke-virtual {p0, v1}, Lc8/ULj;->setContentView(I)V

    .line 65
    sget v1, Lcom/youku/phone/R$id;->agree:I

    invoke-virtual {p0, v1}, Lc8/ULj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lc8/ULj;->agree:Landroid/widget/Button;

    .line 66
    sget v1, Lcom/youku/phone/R$id;->disagree:I

    invoke-virtual {p0, v1}, Lc8/ULj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lc8/ULj;->disagree:Landroid/widget/Button;

    .line 67
    sget v1, Lcom/youku/phone/R$id;->webview:I

    invoke-virtual {p0, v1}, Lc8/ULj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lc8/ULj;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {p0}, Lc8/ULj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 70
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 71
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    invoke-virtual {p0}, Lc8/ULj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lc8/ULj;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v1}, Lc8/ULj;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/ULj;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-direct {p0}, Lc8/ULj;->webviewInit()V

    .line 80
    invoke-direct {p0}, Lc8/ULj;->initEvent()V

    .line 81
    const-string/jumbo v1, "ProvisionDialog"

    const-string/jumbo v2, "Dialog init"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public setAgreeOnclickListener(Lc8/SLj;)V
    .locals 0
    .param p1, "onAgreeOnclickListener"    # Lc8/SLj;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/ULj;->agreeOnclickListener:Lc8/SLj;

    .line 52
    return-void
.end method

.method public setDisagreeOnclickListener(Lc8/TLj;)V
    .locals 0
    .param p1, "onDisagreeOnclickListener"    # Lc8/TLj;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/ULj;->disagreeOnclickListener:Lc8/TLj;

    .line 59
    return-void
.end method
