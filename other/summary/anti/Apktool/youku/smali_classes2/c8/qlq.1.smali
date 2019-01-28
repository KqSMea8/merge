.class public Lc8/qlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->unsafeSubscribe(Lc8/Omq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$s:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 2076
    iput-object p1, p0, Lc8/qlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/qlq;->val$s:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lc8/qlq;->val$s:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 2080
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2084
    iget-object v0, p0, Lc8/qlq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 2085
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 2089
    iget-object v0, p0, Lc8/qlq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2090
    return-void
.end method
