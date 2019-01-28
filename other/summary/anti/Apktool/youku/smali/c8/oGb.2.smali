.class public Lc8/oGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/lGb;


# instance fields
.field private a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

.field private b:Ljava/util/regex/Pattern;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    const-string/jumbo v1, "regexp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lc8/oGb;->b:Ljava/util/regex/Pattern;

    :cond_0
    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    const-string/jumbo v1, "key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/oGb;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/oGb;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    const-string/jumbo v1, "mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/oGb;->g:Ljava/lang/String;

    const-string/jumbo v0, "true"

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    const-string/jumbo v2, "cacheable"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/oGb;->e:Z

    iput-object p1, p0, Lc8/oGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

    return-void
.end method

.method private b(Lc8/mGb;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lc8/oGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/oGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lc8/mGb;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a(Lc8/mGb;)Z
    .locals 8

    const/4 v2, 0x1

    iget-object v0, p0, Lc8/oGb;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/mGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "addIfAbsent"

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "update"

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v0, "append"

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    const-string/jumbo v0, "addAllParams"

    iget-object v1, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lc8/mGb;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lc8/mGb;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/mGb;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lc8/mGb;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/mGb;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lc8/oGb;->e:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lc8/mGb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lc8/oGb;->b(Lc8/mGb;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc8/oGb;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/pGb;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lc8/oGb;->e:Z

    if-eqz v1, :cond_6

    iput-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "replace"

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "update"

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    if-eqz v1, :cond_f

    iget-boolean v0, p0, Lc8/oGb;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    :cond_b
    :goto_4
    if-eqz v0, :cond_7

    iget-object v1, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lc8/mGb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_c
    invoke-direct {p0, p1}, Lc8/oGb;->b(Lc8/mGb;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lc8/oGb;->b:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lc8/oGb;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    move v0, v2

    :goto_5
    if-gt v0, v5, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "group_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    const-string/jumbo v0, "group_0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lc8/oGb;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lc8/pGb;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lc8/oGb;->e:Z

    if-eqz v1, :cond_b

    iput-object v0, p0, Lc8/oGb;->f:Ljava/lang/String;

    goto :goto_4

    :cond_f
    const-string/jumbo v0, "delete"

    iget-object v1, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/mGb;->e(Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v0, "ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore the action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lc8/oGb;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lc8/oGb;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
