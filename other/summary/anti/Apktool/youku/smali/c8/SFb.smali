.class public Lc8/SFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/xgb;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;

.field final synthetic b:Lc8/PFb;


# direct methods
.method constructor <init>(Lc8/PFb;Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;)V
    .locals 0

    iput-object p1, p0, Lc8/SFb;->b:Lc8/PFb;

    iput-object p2, p0, Lc8/SFb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lc8/SFb;->b:Lc8/PFb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/PFb;->a(Lc8/PFb;ILjava/lang/String;)V

    iget-object v0, p0, Lc8/SFb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 1

    iget-object v0, p0, Lc8/SFb;->b:Lc8/PFb;

    invoke-static {v0}, Lc8/PFb;->b(Lc8/PFb;)V

    iget-object v0, p0, Lc8/SFb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;

    invoke-interface {v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;->onSuccess()V

    return-void
.end method
