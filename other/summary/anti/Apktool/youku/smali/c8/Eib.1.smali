.class public Lc8/Eib;
.super Ljava/lang/Object;
.source "LoginByIVTokenTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fib;->doWhenResultOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fib;


# direct methods
.method constructor <init>(Lc8/Fib;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Fib;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/Eib;->this$0:Lc8/Fib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lc8/Eib;->this$0:Lc8/Fib;

    invoke-static {v0}, Lc8/Fib;->access$000(Lc8/Fib;)Lc8/xgb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/Eib;->this$0:Lc8/Fib;

    invoke-static {v0}, Lc8/Fib;->access$000(Lc8/Fib;)Lc8/xgb;

    move-result-object v0

    sget-object v1, Lc8/Bgb;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 105
    :cond_0
    return-void
.end method
