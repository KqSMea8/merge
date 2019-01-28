.class public Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;
.super Landroid/app/Activity;
.source "CheckCodeValidateActivity.java"


# static fields
.field private static final HTTP_REFER_KEY:Ljava/lang/String; = "http_referer="

.field private static final NATIVE_FLAG:Ljava/lang/String; = "native=1"

.field private static final RESULT_BROADCAST_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckActivity"

.field private static final TMD_NC_FLAG:Ljava/lang/String; = "tmd_nc=1"


# instance fields
.field public httpReferValue:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field webView:Lc8/DD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->webView:Lc8/DD;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->httpReferValue:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method private dealWithLocationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "queryStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "httpRefer":Ljava/lang/String;
    const-string/jumbo v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "queryElements":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 97
    aget-object v0, v3, v2

    .line 98
    .local v0, "element":Ljava/lang/String;
    const-string/jumbo v7, "http_referer="

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    move-object v1, v0

    .line 100
    const-string/jumbo v7, "http_referer="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->httpReferValue:Ljava/lang/String;

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const-string/jumbo v7, "native=1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 108
    .end local v0    # "element":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "tmd_nc=1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz v1, :cond_3

    .line 110
    const-string/jumbo v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .end local v1    # "httpRefer":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "queryElements":[Ljava/lang/String;
    :goto_2
    return-object v7

    .line 114
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 116
    const-string/jumbo v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_5
    const-string/jumbo v7, "tmd_nc=1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private sendResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 82
    const/16 v1, 0x10

    const-string/jumbo v2, "mtopsdk.CheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lc8/FMp;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "Result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 77
    const-string/jumbo v0, "cancel"

    invoke-direct {p0, v0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->sendResult(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->finish()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-virtual {p0, v2}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->setContentView(Landroid/view/View;)V

    .line 43
    new-instance v4, Lc8/DD;

    invoke-direct {v4, p0}, Lc8/DD;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->webView:Lc8/DD;

    .line 44
    iget-object v4, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->webView:Lc8/DD;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v4, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->webView:Lc8/DD;

    new-instance v5, Lc8/DMp;

    invoke-direct {v5, p0, p0}, Lc8/DMp;-><init>(Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lc8/DD;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 60
    invoke-virtual {p0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "Location"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "location":Ljava/lang/String;
    const/16 v4, 0x10

    const-string/jumbo v5, "mtopsdk.CheckActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "origin load url. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lc8/FMp;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-direct {p0, v3}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->dealWithLocationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    const/16 v4, 0x10

    const-string/jumbo v5, "mtopsdk.CheckActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load url. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lc8/FMp;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    iget-object v4, p0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->webView:Lc8/DD;

    invoke-virtual {v4, v3}, Lc8/DD;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "location":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mtopsdk.CheckActivity"

    const-string/jumbo v5, "onCreate failed."

    invoke-static {v8, v4, v5, v0}, Lc8/FMp;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const-string/jumbo v4, "fail"

    invoke-direct {p0, v4}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->sendResult(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->finish()V

    goto :goto_0
.end method
