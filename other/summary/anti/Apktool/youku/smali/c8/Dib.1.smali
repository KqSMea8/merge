.class public Lc8/Dib;
.super Ljava/lang/Object;
.source "LoginByIVTokenTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fib;->doWhenResultFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fib;

.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Fib;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Fib;

    .prologue
    .line 81
    iput-object p1, p0, Lc8/Dib;->this$0:Lc8/Fib;

    iput p2, p0, Lc8/Dib;->val$code:I

    iput-object p3, p0, Lc8/Dib;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/Dib;->val$code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lc8/Dib;->val$message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lc8/Dib;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    sget-object v2, Lc8/oib;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    iget-object v1, p0, Lc8/Dib;->this$0:Lc8/Fib;

    invoke-static {v1}, Lc8/Fib;->access$000(Lc8/Fib;)Lc8/xgb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lc8/Dib;->this$0:Lc8/Fib;

    invoke-static {v1}, Lc8/Fib;->access$000(Lc8/Fib;)Lc8/xgb;

    move-result-object v1

    iget v2, p0, Lc8/Dib;->val$code:I

    iget-object v3, p0, Lc8/Dib;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method
