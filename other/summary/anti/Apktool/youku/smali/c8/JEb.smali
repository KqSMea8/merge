.class public Lc8/JEb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/VFb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KEb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lc8/VEb;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lc8/VEb;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/JEb;->a:Lc8/VEb;

    iput-object p2, p0, Lc8/JEb;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/JEb;->c:Z

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 3

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Lc8/KEb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 6

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Lc8/KEb;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v1

    const-string/jumbo v2, "BCPCSDK"

    const-string/jumbo v3, "Mtop_Auth"

    invoke-virtual {v1, v2, v3}, Lc8/cGb;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lc8/JEb;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/JEb;->b:Ljava/lang/String;

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/UEb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->a()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "expires"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lc8/UEb;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/JEb;->a:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->a()V

    goto :goto_0
.end method
