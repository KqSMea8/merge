.class public final Lc8/REb;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc8/VEb;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lc8/VEb;ZZ)V
    .locals 0

    iput-object p1, p0, Lc8/REb;->a:Ljava/lang/String;

    iput-object p2, p0, Lc8/REb;->b:Lc8/VEb;

    iput-boolean p3, p0, Lc8/REb;->c:Z

    iput-boolean p4, p0, Lc8/REb;->d:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->TEST:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "http://100.69.205.47/authHint.htm?apiList=[\"%s\"]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/REb;->a:Ljava/lang/String;

    const-string/jumbo v3, "$"

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "alibc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHint : url  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/jIb;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alibc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHint : url  "

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->PRE:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "http://pre.nbsdk-baichuan.taobao.com/authHint.htm?apiList=[\"%s\"]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/REb;->a:Ljava/lang/String;

    const-string/jumbo v3, "$"

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "https://nbsdk-baichuan.alicdn.com/authHint.htm?apiList=[\"%s\"]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/REb;->a:Ljava/lang/String;

    const-string/jumbo v3, "$"

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/REb;->b:Lc8/VEb;

    sget-object v1, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v2, v2, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "authHintMap"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v0, "hintId"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "hintName"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/OEb;->putExpandList(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hintId"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc8/REb;->b:Lc8/VEb;

    sget-object v2, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v2, v2, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v3, v3, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lc8/REb;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/OEb;->putApiAndHint(Ljava/lang/String;Ljava/util/Set;)V

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lc8/REb;->b:Lc8/VEb;

    sget-object v1, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v2, v2, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v1, p0, Lc8/REb;->c:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc8/REb;->b:Lc8/VEb;

    iget-boolean v2, p0, Lc8/REb;->d:Z

    invoke-static {v0, v1, v2}, Lc8/KEb;->a(Ljava/util/Set;Lc8/VEb;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lc8/REb;->b:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/REb;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/REb;->a(Ljava/lang/String;)V

    return-void
.end method
