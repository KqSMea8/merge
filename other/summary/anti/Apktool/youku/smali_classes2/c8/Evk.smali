.class public abstract Lc8/Evk;
.super Ljava/lang/Object;
.source "BeanCallBack.java"

# interfaces
.implements Lc8/OIj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/OIj;"
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    .local p0, "this":Lc8/Evk;, "Lcom/youku/phone/freeflow/callback/BeanCallBack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lc8/Evk;->clazz:Ljava/lang/Class;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract onFail(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public onFinish(Lc8/eJj;)V
    .locals 8
    .param p1, "ykResponse"    # Lc8/eJj;

    .prologue
    .local p0, "this":Lc8/Evk;, "Lcom/youku/phone/freeflow/callback/BeanCallBack<TT;>;"
    const/16 v6, -0x3ea

    const/16 v7, -0x3ed

    .line 31
    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorCode()I

    move-result v0

    .line 34
    .local v0, "errorcode":I
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "errormsg":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/eJj;->isCallSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 37
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 39
    .local v3, "resp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    iget-object v5, p0, Lc8/Evk;->clazz:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4, v5, v6}, Lc8/AIb;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0, v2, v3}, Lc8/Evk;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .end local v0    # "errorcode":I
    .end local v1    # "errormsg":Ljava/lang/String;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    .end local v3    # "resp":Ljava/lang/String;
    :goto_0
    return-void

    .line 43
    .restart local v0    # "errorcode":I
    .restart local v1    # "errormsg":Ljava/lang/String;
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v3    # "resp":Ljava/lang/String;
    :cond_0
    const/16 v4, -0x3ed

    const-string/jumbo v5, "json null"

    invoke-virtual {p0, v4, v5, v3}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    const-string/jumbo v4, "json error"

    invoke-virtual {p0, v7, v4, v3}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v3    # "resp":Ljava/lang/String;
    :cond_1
    const/16 v4, -0x3ec

    const-string/jumbo v5, "response is null"

    const-string/jumbo v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_3
    const-string/jumbo v4, ""

    invoke-virtual {p0, v6, v1, v4}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0    # "errorcode":I
    .end local v1    # "errormsg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "response is null"

    const-string/jumbo v5, ""

    invoke-virtual {p0, v6, v4, v5}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
