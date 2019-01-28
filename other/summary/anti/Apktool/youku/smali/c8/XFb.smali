.class public Lc8/XFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/AMf;


# instance fields
.field final synthetic a:Lc8/VFb;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

.field final synthetic c:Lc8/UFb;


# direct methods
.method constructor <init>(Lc8/UFb;Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)V
    .locals 0

    iput-object p1, p0, Lc8/XFb;->c:Lc8/UFb;

    iput-object p2, p0, Lc8/XFb;->a:Lc8/VFb;

    iput-object p3, p0, Lc8/XFb;->b:Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v0, p2}, Lc8/UFb;->a(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lc8/XFb;->a:Lc8/VFb;

    iget-object v1, p0, Lc8/XFb;->b:Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v2, p2}, Lc8/UFb;->b(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/VFb;->onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v0, p2}, Lc8/UFb;->a(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lc8/XFb;->a:Lc8/VFb;

    iget-object v1, p0, Lc8/XFb;->b:Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v2, p2}, Lc8/UFb;->b(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/VFb;->onSuccess(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v0, p2}, Lc8/UFb;->a(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lc8/XFb;->a:Lc8/VFb;

    iget-object v1, p0, Lc8/XFb;->b:Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lc8/XFb;->c:Lc8/UFb;

    invoke-static {v2, p2}, Lc8/UFb;->b(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/VFb;->onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method
