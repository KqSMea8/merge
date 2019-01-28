.class public Lc8/Jkq;
.super Lc8/Nmq;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kkq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kkq;

.field final synthetic val$s:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/Kkq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lc8/Jkq;->this$0:Lc8/Kkq;

    iput-object p2, p0, Lc8/Jkq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 594
    iget-object v0, p0, Lc8/Jkq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 595
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 599
    iget-object v0, p0, Lc8/Jkq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 600
    return-void
.end method
