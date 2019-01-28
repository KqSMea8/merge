.class public Lc8/LHb;
.super Landroid/app/Activity;


# static fields
.field public static e:I

.field private static final h:Ljava/lang/String;


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Lc8/NGb;

.field public c:Landroid/widget/TextView;

.field public d:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OPEN_H5_TRADE"

    invoke-static {v0}, Lc8/WHb;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc8/LHb;->e:I

    const-class v0, Lc8/LHb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/LHb;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lc8/mjb;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lc8/LHb;->b:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/LHb;->b:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lc8/LHb;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lc8/vFb;->isShowTitleBar:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v9}, Lc8/LHb;->requestWindowFeature(I)Z

    :cond_0
    invoke-virtual {p0}, Lc8/LHb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "com_taobao_nb_sdk_web_view_activity"

    invoke-static {p0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lc8/LHb;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/LHb;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ui_contextParams"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_0
    sget-object v2, Lc8/RGb;->showProcessContext:Lcom/alibaba/baichuan/android/trade/b/a;

    sput-object v7, Lc8/RGb;->showProcessContext:Lcom/alibaba/baichuan/android/trade/b/a;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lc8/LHb;->finish()V

    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_b

    const-string/jumbo v0, "ui_contextParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    new-instance v0, Lc8/NGb;

    iget-object v3, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_8

    check-cast v1, Ljava/util/Map;

    move-object v4, v1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/NGb;-><init>(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Z)V

    iput-object v0, p0, Lc8/LHb;->b:Lc8/NGb;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Lc8/LHb;->setContentView(Landroid/view/View;)V

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_taobao_nb_sdk_web_view_title_bar_title"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/LHb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/LHb;->c:Landroid/widget/TextView;

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_taobao_nb_sdk_web_view_title_bar_close_button"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/LHb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/LHb;->g:Landroid/view/View;

    iget-object v0, p0, Lc8/LHb;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/LHb;->g:Landroid/view/View;

    new-instance v1, Lc8/MHb;

    invoke-direct {v1, p0}, Lc8/MHb;-><init>(Lc8/LHb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_taobao_nb_sdk_web_view_title_bar_back_button"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/LHb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lc8/NHb;

    invoke-direct {v1, p0}, Lc8/NHb;-><init>(Lc8/LHb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_taobao_tae_sdk_web_view_title_bar_more_button"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/LHb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lc8/OHb;

    invoke-direct {v1, p0}, Lc8/OHb;-><init>(Lc8/LHb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_taobao_tae_sdk_web_view_title_bar"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/LHb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/LHb;->f:Landroid/view/View;

    if-eqz p1, :cond_a

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/alibaba/baichuan/android/trade/b/a;->d:Ljava/lang/String;

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v9, p0, Lc8/LHb;->d:Z

    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lc8/LHb;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    sget-object v0, Lc8/LHb;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AliTrade SDK WebView\u9996\u6b21\u52a0\u8f7d\u7684url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object v4, v7

    goto/16 :goto_2

    :cond_9
    iput-boolean v5, p0, Lc8/LHb;->d:Z

    iget-object v1, p0, Lc8/LHb;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    move-object v0, v7

    goto :goto_3

    :cond_b
    move-object v1, v7

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "url"

    iget-object v1, p0, Lc8/LHb;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    iget-object v1, p0, Lc8/LHb;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ui_contextParams"

    iget-object v0, p0, Lc8/LHb;->b:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
