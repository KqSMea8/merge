.class public Lc8/ngb;
.super Lc8/xjb;
.source "UnbindWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    invoke-direct {p0}, Lc8/xjb;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 80
    const-string/jumbo v6, "https://accountlink.taobao.com/confirmUnbind.htm"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    iget-object v6, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    sget-object v7, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v7, v7, Lc8/Wgb;->code:I

    invoke-virtual {v6, v7, v9}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object v6, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    invoke-virtual {v6}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->finish()V

    .line 128
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v8

    .line 84
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    const-string/jumbo v6, "http://err.taobao.com/error2.html"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    iget-object v6, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    sget-object v7, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    iget v7, v7, Lc8/Wgb;->code:I

    invoke-virtual {v6, v7, v9}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object v6, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    invoke-virtual {v6}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->finish()V

    goto :goto_0

    .line 89
    :cond_1
    sget-object v6, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v6, p2}, Lc8/hib;->isLoginUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    iget-object v6, p0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    iput-boolean v8, v6, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->isFromLogin:Z

    .line 91
    const-class v6, Lc8/Sfb;

    invoke-static {v6}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Sfb;

    new-instance v7, Lc8/mgb;

    invoke-direct {v7, p0, p1}, Lc8/mgb;-><init>(Lc8/ngb;Landroid/webkit/WebView;)V

    invoke-interface {v6, v7}, Lc8/Sfb;->bind(Lc8/xgb;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string/jumbo v6, "https://aq.taobao.com/durex/wirelessValidate"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "+"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const-string/jumbo v6, "?"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "strs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 108
    aget-object v6, v3, v5

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "strs2":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 110
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string/jumbo v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v4, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "encode":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 123
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "encode":Ljava/lang/String;
    .end local v3    # "strs":[Ljava/lang/String;
    .end local v4    # "strs2":[Ljava/lang/String;
    .end local v5    # "x":I
    :cond_3
    instance-of v6, p1, Lc8/sjb;

    if-eqz v6, :cond_5

    .line 124
    check-cast p1, Lc8/sjb;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v3    # "strs":[Ljava/lang/String;
    .restart local v4    # "strs2":[Ljava/lang/String;
    .restart local v5    # "x":I
    .restart local p1    # "view":Landroid/webkit/WebView;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "strs":[Ljava/lang/String;
    .end local v4    # "strs2":[Ljava/lang/String;
    .end local v5    # "x":I
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
