.class public Lcom/alibaba/baichuan/android/trade/c/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;


# instance fields
.field final synthetic a:Lc8/sGb;

.field final synthetic b:Lc8/DGb;


# direct methods
.method public constructor <init>(Lc8/DGb;Lc8/sGb;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->b:Lc8/DGb;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->e:Lc8/NGb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->e:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v1, v1, Lc8/sGb;->g:Landroid/app/Activity;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com_taobao_nb_sdk_webview_click"

    invoke-static {v1, v2, v3}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->e:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->e:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->e()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->a:Lc8/sGb;

    iget-object v0, v0, Lc8/sGb;->e:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->d()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/b/e;->b:Lc8/DGb;

    invoke-static {v0}, Lc8/DGb;->a(Lc8/DGb;)V

    return-void
.end method
