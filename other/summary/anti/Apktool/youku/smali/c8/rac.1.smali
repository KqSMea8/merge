.class public Lc8/rac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/VFb;


# instance fields
.field final synthetic a:Lc8/tac;

.field final synthetic b:Lc8/qac;


# direct methods
.method constructor <init>(Lc8/qac;Lc8/tac;)V
    .locals 0

    iput-object p1, p0, Lc8/rac;->b:Lc8/qac;

    iput-object p2, p0, Lc8/rac;->a:Lc8/tac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 1

    iget-object v0, p0, Lc8/rac;->a:Lc8/tac;

    invoke-interface {v0, p1, p2}, Lc8/tac;->b(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 1

    iget-object v0, p0, Lc8/rac;->a:Lc8/tac;

    invoke-interface {v0, p1, p2}, Lc8/tac;->a(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method
