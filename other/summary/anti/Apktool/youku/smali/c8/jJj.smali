.class public Lc8/jJj;
.super Lc8/nJj;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pJj;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/nJj",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pJj;


# direct methods
.method constructor <init>(Lc8/pJj;)V
    .locals 1
    .param p1, "this$0"    # Lc8/pJj;

    .prologue
    .line 93
    .local p0, "this":Lc8/jJj;, "Lcom/youku/network/YoukuAsyncTask$2;"
    iput-object p1, p0, Lc8/jJj;->this$0:Lc8/pJj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/nJj;-><init>(Lc8/iJj;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lc8/jJj;, "Lcom/youku/network/YoukuAsyncTask$2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    iget-object v0, p0, Lc8/jJj;->this$0:Lc8/pJj;

    iget-object v1, p0, Lc8/jJj;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/pJj;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
