.class public Lc8/VGb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/b/a;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Landroid/webkit/WebViewClient;

.field final synthetic f:Landroid/webkit/WebChromeClient;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Lc8/TGb;


# direct methods
.method constructor <init>(Lc8/TGb;Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lc8/VGb;->i:Lc8/TGb;

    iput-object p2, p0, Lc8/VGb;->a:Landroid/app/Activity;

    iput-object p3, p0, Lc8/VGb;->b:Lcom/alibaba/baichuan/android/trade/b/a;

    iput-object p4, p0, Lc8/VGb;->c:Landroid/webkit/WebView;

    iput-object p5, p0, Lc8/VGb;->d:Ljava/util/Map;

    iput-object p6, p0, Lc8/VGb;->e:Landroid/webkit/WebViewClient;

    iput-object p7, p0, Lc8/VGb;->f:Landroid/webkit/WebChromeClient;

    iput-object p8, p0, Lc8/VGb;->g:Ljava/lang/String;

    iput-object p9, p0, Lc8/VGb;->h:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lc8/NGb;

    iget-object v1, p0, Lc8/VGb;->a:Landroid/app/Activity;

    iget-object v2, p0, Lc8/VGb;->b:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v3, p0, Lc8/VGb;->c:Landroid/webkit/WebView;

    iget-object v4, p0, Lc8/VGb;->d:Ljava/util/Map;

    iget-object v5, p0, Lc8/VGb;->e:Landroid/webkit/WebViewClient;

    iget-object v6, p0, Lc8/VGb;->f:Landroid/webkit/WebChromeClient;

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lc8/NGb;-><init>(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    invoke-static {}, Lc8/TGb;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7b2c\u4e09\u65b9 WebView\u9996\u6b21\u52a0\u8f7d\u7684url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/VGb;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/VGb;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/VGb;->g:Ljava/lang/String;

    iget-object v2, p0, Lc8/VGb;->h:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lc8/NGb;->a(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lc8/VGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/NGb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
