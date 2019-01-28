.class public Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "alisdk://"

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "actionName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "showNative"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "actionParameters"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string/jumbo v0, "pid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "pid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :goto_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    const-string/jumbo v4, "BaichuanTLOG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AlibcNativeTaobaoActivity.start()--Back From NativeTaobao: action:showNative itemId:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " taokePid:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_2

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getIsvCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->a()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lc8/XGb;->a(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->finish()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BaichuanTLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AlibcNativeTaobaoActivity.start()--Back From NativeTaobao(jump through scheme url): action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->finish()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcNativeTaobaoActivity;->finish()V

    goto :goto_3

    :cond_7
    move-object v5, v2

    goto/16 :goto_0
.end method
