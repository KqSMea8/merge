.class public Lc8/Awq;
.super Lc8/Nmq;
.source "SingleOnSubscribeUsing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bwq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bwq;

.field final synthetic val$child:Lc8/Nmq;

.field final synthetic val$resource:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/Bwq;Ljava/lang/Object;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lc8/Awq;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    iput-object p1, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iput-object p2, p0, Lc8/Awq;->val$resource:Ljava/lang/Object;

    iput-object p3, p0, Lc8/Awq;->val$child:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    .local p0, "this":Lc8/Awq;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    iget-object v0, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iget-object v1, p0, Lc8/Awq;->val$child:Lc8/Nmq;

    iget-object v2, p0, Lc8/Awq;->val$resource:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lc8/Bwq;->handleSubscriptionTimeError(Lc8/Nmq;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/Awq;, "Lrx/internal/operators/SingleOnSubscribeUsing.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iget-boolean v2, v2, Lc8/Bwq;->disposeEagerly:Z

    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    iget-object v2, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iget-object v2, v2, Lc8/Bwq;->disposeAction:Lc8/inq;

    iget-object v3, p0, Lc8/Awq;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    iget-object v2, p0, Lc8/Awq;->val$child:Lc8/Nmq;

    invoke-virtual {v2, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iget-boolean v2, v2, Lc8/Bwq;->disposeEagerly:Z

    if-nez v2, :cond_1

    .line 91
    :try_start_1
    iget-object v2, p0, Lc8/Awq;->this$0:Lc8/Bwq;

    iget-object v2, v2, Lc8/Bwq;->disposeAction:Lc8/inq;

    iget-object v3, p0, Lc8/Awq;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    iget-object v2, p0, Lc8/Awq;->val$child:Lc8/Nmq;

    invoke-virtual {v2, v0}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 94
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
