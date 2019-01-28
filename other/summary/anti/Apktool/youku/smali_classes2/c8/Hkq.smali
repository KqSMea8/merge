.class public Lc8/Hkq;
.super Lc8/Omq;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ikq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ikq;

.field final synthetic val$cs:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/Ikq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lc8/Hkq;->this$0:Lc8/Ikq;

    iput-object p2, p0, Lc8/Hkq;->val$cs:Lc8/Nlq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lc8/Hkq;->val$cs:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 560
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 564
    iget-object v0, p0, Lc8/Hkq;->val$cs:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 565
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 570
    return-void
.end method
