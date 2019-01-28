.class public Lc8/qyq;
.super Lc8/Omq;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ryq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ryq;

.field final synthetic val$child:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/ryq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 136
    .local p0, "this":Lc8/qyq;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iput-object p1, p0, Lc8/qyq;->this$1:Lc8/ryq;

    iput-object p2, p0, Lc8/qyq;->val$child:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 140
    .local p0, "this":Lc8/qyq;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    .local p0, "this":Lc8/qyq;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iget-object v0, p0, Lc8/qyq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lc8/qyq;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    .local p1, "r":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/qyq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 150
    return-void
.end method
