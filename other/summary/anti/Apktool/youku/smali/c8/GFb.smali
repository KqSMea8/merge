.class public final Lc8/GFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/SGb;


# instance fields
.field final synthetic a:Lc8/AHb;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Landroid/webkit/WebViewClient;

.field final synthetic e:Landroid/webkit/WebChromeClient;

.field final synthetic f:Lcom/alibaba/baichuan/android/trade/b/a;

.field final synthetic g:Lc8/vHb;


# direct methods
.method constructor <init>(Lc8/AHb;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/vHb;)V
    .locals 0

    iput-object p1, p0, Lc8/GFb;->a:Lc8/AHb;

    iput-object p2, p0, Lc8/GFb;->b:Landroid/app/Activity;

    iput-object p3, p0, Lc8/GFb;->c:Landroid/webkit/WebView;

    iput-object p4, p0, Lc8/GFb;->d:Landroid/webkit/WebViewClient;

    iput-object p5, p0, Lc8/GFb;->e:Landroid/webkit/WebChromeClient;

    iput-object p6, p0, Lc8/GFb;->f:Lcom/alibaba/baichuan/android/trade/b/a;

    iput-object p7, p0, Lc8/GFb;->g:Lc8/vHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public genTaokeUrl(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lc8/GFb;->a:Lc8/AHb;

    invoke-virtual {v0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v0, p0, Lc8/GFb;->b:Landroid/app/Activity;

    iget-object v1, p0, Lc8/GFb;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lc8/GFb;->d:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lc8/GFb;->e:Landroid/webkit/WebChromeClient;

    iget-object v4, p0, Lc8/GFb;->a:Lc8/AHb;

    invoke-static {}, Lc8/wFb;->a()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lc8/GFb;->f:Lcom/alibaba/baichuan/android/trade/b/a;

    invoke-virtual {v4, p1, v5, v6}, Lc8/AHb;->getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/GFb;->a:Lc8/AHb;

    iget-object v6, p0, Lc8/GFb;->f:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v7, p0, Lc8/GFb;->g:Lc8/vHb;

    invoke-virtual {v7}, Lc8/vHb;->isProxyWebview()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lc8/wFb;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lc8/AHb;Lcom/alibaba/baichuan/android/trade/b/a;Z)V

    return-void

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
