.class public Lc8/Mrq;
.super Lc8/Omq;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Prq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Lc8/Qlq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field terminated:Z

.field final synthetic this$0:Lc8/Prq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Prq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lc8/Mrq;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Mrq;->this$0:Lc8/Prq;

    iput-object p3, p0, Lc8/Mrq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lc8/Mrq;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lc8/Mrq;->terminated:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mrq;->terminated:Z

    .line 85
    iget-object v0, p0, Lc8/Mrq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 87
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    .local p0, "this":Lc8/Mrq;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lc8/Mrq;->terminated:Z

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mrq;->terminated:Z

    .line 77
    iget-object v0, p0, Lc8/Mrq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onNext(Lc8/Qlq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/Mrq;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p1, "t":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    sget-object v0, Lc8/Nrq;->$SwitchMap$rx$Notification$Kind:[I

    invoke-virtual {p1}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported notification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/Mrq;->onError(Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-boolean v0, p0, Lc8/Mrq;->terminated:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/Mrq;->val$child:Lc8/Omq;

    invoke-virtual {p1}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Mrq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lc8/Mrq;->onCompleted()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lc8/Mrq;, "Lrx/internal/operators/OperatorDematerialize.1;"
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Mrq;->onNext(Lc8/Qlq;)V

    return-void
.end method
