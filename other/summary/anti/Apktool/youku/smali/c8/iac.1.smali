.class public final Lc8/iac;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->TEST:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "http://100.69.205.47/%s/component_config.htm"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string/jumbo v1, "alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLicense2CDN : url  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jIb;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alibc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLicense2CDN : url  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/hac;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BC_Want_License"

    invoke-static {}, Lc8/hac;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/aIb;->asyncPutCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/hac;->a(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->PRE:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "http://nbsdk-baichuan.taobao.com/%s/component_config.htm"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "https://nbsdk-baichuan.alicdn.com/%s/component_config.htm"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lc8/jac;

    invoke-direct {v0, p0}, Lc8/jac;-><init>(Lc8/iac;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
