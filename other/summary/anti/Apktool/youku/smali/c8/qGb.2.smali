.class public Lc8/qGb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

.field private b:Lc8/rGb;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/qGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->j:Lc8/rGb;

    iput-object v0, p0, Lc8/qGb;->b:Lc8/rGb;

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lc8/qGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    return-object v0
.end method

.method public a(Lc8/sGb;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/qGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->m:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qGb;->b:Lc8/rGb;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/qGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a(Lc8/wGb;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/qGb;->b:Lc8/rGb;

    invoke-interface {v0, p1}, Lc8/rGb;->a(Lc8/sGb;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
