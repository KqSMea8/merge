.class public Lc8/Bgq;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cgq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cgq;

.field final synthetic val$handled:Lretrofit/RetrofitError;


# direct methods
.method constructor <init>(Lc8/Cgq;Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cgq;

    .prologue
    .line 51
    .local p0, "this":Lc8/Bgq;, "Lretrofit/CallbackRunnable$2;"
    iput-object p1, p0, Lc8/Bgq;->this$0:Lc8/Cgq;

    iput-object p2, p0, Lc8/Bgq;->val$handled:Lretrofit/RetrofitError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lc8/Bgq;, "Lretrofit/CallbackRunnable$2;"
    iget-object v0, p0, Lc8/Bgq;->this$0:Lc8/Cgq;

    invoke-static {v0}, Lc8/Cgq;->access$000(Lc8/Cgq;)Lc8/zgq;

    move-result-object v0

    iget-object v1, p0, Lc8/Bgq;->val$handled:Lretrofit/RetrofitError;

    invoke-interface {v0, v1}, Lc8/zgq;->failure(Lretrofit/RetrofitError;)V

    .line 54
    return-void
.end method
