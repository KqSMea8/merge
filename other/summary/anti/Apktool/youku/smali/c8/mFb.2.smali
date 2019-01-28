.class public Lc8/mFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/VFb;


# instance fields
.field final synthetic a:Lc8/eFb;

.field final synthetic b:Lc8/lFb;


# direct methods
.method constructor <init>(Lc8/lFb;Lc8/eFb;)V
    .locals 0

    iput-object p1, p0, Lc8/mFb;->b:Lc8/lFb;

    iput-object p2, p0, Lc8/mFb;->a:Lc8/eFb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 5

    new-instance v1, Lc8/fFb;

    invoke-direct {v1}, Lc8/fFb;-><init>()V

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc8/fFb;->setResultMsg(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc8/mFb;->a:Lc8/eFb;

    invoke-virtual {v0, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 5

    new-instance v1, Lc8/fFb;

    invoke-direct {v1}, Lc8/fFb;-><init>()V

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lc8/fFb;->setSuccess()V

    iget-object v0, p0, Lc8/mFb;->a:Lc8/eFb;

    invoke-virtual {v0, v1}, Lc8/eFb;->success(Lc8/fFb;)V

    return-void
.end method
