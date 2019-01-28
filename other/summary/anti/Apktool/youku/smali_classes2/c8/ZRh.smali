.class public Lc8/ZRh;
.super Lc8/dSh;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eSh;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/dSh",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eSh;


# direct methods
.method constructor <init>(Lc8/eSh;)V
    .locals 1
    .param p1, "this$0"    # Lc8/eSh;

    .prologue
    .line 81
    .local p0, "this":Lc8/ZRh;, "Lcom/youku/http/HttpAsyncTask$2;"
    iput-object p1, p0, Lc8/ZRh;->this$0:Lc8/eSh;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/dSh;-><init>(Lc8/YRh;)V

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
    .line 83
    .local p0, "this":Lc8/ZRh;, "Lcom/youku/http/HttpAsyncTask$2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Lc8/ZRh;->this$0:Lc8/eSh;

    iget-object v1, p0, Lc8/ZRh;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/eSh;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
