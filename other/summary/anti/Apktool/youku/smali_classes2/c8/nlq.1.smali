.class public Lc8/nlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->subscribe()Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$mad:Lc8/UBq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/UBq;)V
    .locals 0

    .prologue
    .line 1886
    iput-object p1, p0, Lc8/nlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/nlq;->val$mad:Lc8/UBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lc8/nlq;->val$mad:Lc8/UBq;

    invoke-virtual {v0}, Lc8/UBq;->unsubscribe()V

    .line 1890
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1894
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 1895
    iget-object v0, p0, Lc8/nlq;->val$mad:Lc8/UBq;

    invoke-virtual {v0}, Lc8/UBq;->unsubscribe()V

    .line 1896
    invoke-static {p1}, Lc8/Plq;->access$000(Ljava/lang/Throwable;)V

    .line 1897
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1901
    iget-object v0, p0, Lc8/nlq;->val$mad:Lc8/UBq;

    invoke-virtual {v0, p1}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 1902
    return-void
.end method
