.class public Lc8/kGb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/kGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/kGb;->b:Ljava/util/List;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/kGb;->b:Ljava/util/List;

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->a()Lc8/lGb;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lc8/kGb;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lc8/kGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    return-object v0
.end method

.method public a(Lc8/mGb;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/kGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->m:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/kGb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lc8/kGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a(Lc8/wGb;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/kGb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lGb;

    invoke-interface {v0, p1}, Lc8/lGb;->a(Lc8/mGb;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
