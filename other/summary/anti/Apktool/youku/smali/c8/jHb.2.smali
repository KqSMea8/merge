.class public Lc8/jHb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/iHb;


# direct methods
.method constructor <init>(Lc8/iHb;)V
    .locals 0

    iput-object p1, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lc8/nHb;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v2}, Lc8/iHb;->a(Lc8/iHb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {}, Lc8/nHb;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/iHb;->a(Lc8/iHb;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "AlibcConfigPullProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u4ece\u7f51\u7edc\u62c9\u53d6config\u6570\u636e,url\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v3}, Lc8/iHb;->a(Lc8/iHb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v1}, Lc8/iHb;->a(Lc8/iHb;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/jIb;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "AlibcConfigPullProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7f51\u7edc\u62c9\u53d6\u7684config\u6570\u636e\u4e3a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lc8/dHb;

    invoke-direct {v1}, Lc8/dHb;-><init>()V

    invoke-virtual {v1, v3}, Lc8/dHb;->a(Lorg/json/JSONObject;)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v3, v1}, Lc8/iHb;->a(Lc8/iHb;Lc8/dHb;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "AlibcConfigPullProcessor"

    const-string/jumbo v4, "\u7f51\u7edc\u62c9\u53d6config\u6570\u636e\u6210\u529f"

    invoke-static {v3, v4}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v3}, Lc8/iHb;->b(Lc8/iHb;)V

    iget-object v3, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v3}, Lc8/iHb;->c(Lc8/iHb;)Lc8/hHb;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lc8/hHb;->a(Lc8/dHb;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AlibcConfigPullProcessor"

    const-string/jumbo v2, "config\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    const-string/jumbo v2, "\u6821\u9a8c\u9519\u8bef"

    invoke-static {v1, v2}, Lc8/iHb;->b(Lc8/iHb;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v1}, Lc8/iHb;->c(Lc8/iHb;)Lc8/hHb;

    move-result-object v1

    const-string/jumbo v2, "config\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v1, v2}, Lc8/hHb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/baichuan/android/trade/utils/http/HttpHelper$HttpHelpterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AlibcConfigPullProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u83b7\u53d6Http\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/utils/http/HttpHelper$HttpHelpterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/alibaba/baichuan/android/trade/utils/http/HttpHelper$HttpHelpterException;->statusCode:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_3

    :goto_2
    iget-object v2, p0, Lc8/jHb;->a:Lc8/iHb;

    const-string/jumbo v3, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v2, v0, v3}, Lc8/iHb;->a(Lc8/iHb;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v0}, Lc8/iHb;->c(Lc8/iHb;)Lc8/hHb;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/utils/http/HttpHelper$HttpHelpterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/hHb;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v0, v1, Lcom/alibaba/baichuan/android/trade/utils/http/HttpHelper$HttpHelpterException;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AlibcConfigPullProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u89e3\u6790JSON\u51fa\u9519"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    const-string/jumbo v2, "\u89e3\u6790\u9519\u8bef"

    invoke-static {v1, v2}, Lc8/iHb;->b(Lc8/iHb;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/jHb;->a:Lc8/iHb;

    invoke-static {v1}, Lc8/iHb;->c(Lc8/iHb;)Lc8/hHb;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lc8/hHb;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
