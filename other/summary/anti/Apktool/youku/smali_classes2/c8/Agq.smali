.class public Lc8/Agq;
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

.field final synthetic val$wrapper:Lc8/khq;


# direct methods
.method constructor <init>(Lc8/Cgq;Lc8/khq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cgq;

    .prologue
    .line 43
    .local p0, "this":Lc8/Agq;, "Lretrofit/CallbackRunnable$1;"
    iput-object p1, p0, Lc8/Agq;->this$0:Lc8/Cgq;

    iput-object p2, p0, Lc8/Agq;->val$wrapper:Lc8/khq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    .local p0, "this":Lc8/Agq;, "Lretrofit/CallbackRunnable$1;"
    iget-object v0, p0, Lc8/Agq;->this$0:Lc8/Cgq;

    invoke-static {v0}, Lc8/Cgq;->access$000(Lc8/Cgq;)Lc8/zgq;

    move-result-object v0

    iget-object v1, p0, Lc8/Agq;->val$wrapper:Lc8/khq;

    iget-object v1, v1, Lc8/khq;->responseBody:Ljava/lang/Object;

    iget-object v2, p0, Lc8/Agq;->val$wrapper:Lc8/khq;

    iget-object v2, v2, Lc8/khq;->response:Lc8/Whq;

    invoke-interface {v0, v1, v2}, Lc8/zgq;->success(Ljava/lang/Object;Lc8/Whq;)V

    .line 46
    return-void
.end method
