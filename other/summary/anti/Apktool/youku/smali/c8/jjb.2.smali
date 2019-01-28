.class public Lc8/jjb;
.super Ljava/lang/Object;
.source "BridgeCallbackContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ljb;->success(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ljb;

.field final synthetic val$retString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ljb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ljb;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/jjb;->this$0:Lc8/ljb;

    iput-object p2, p0, Lc8/jjb;->val$retString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    iget-object v1, p0, Lc8/jjb;->val$retString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string/jumbo v1, "javascript:window.HavanaBridge.onSuccess(%s);"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/jjb;->this$0:Lc8/ljb;

    iget v3, v3, Lc8/ljb;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "js":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lc8/jjb;->this$0:Lc8/ljb;

    invoke-static {v1, v0}, Lc8/ljb;->access$100(Lc8/ljb;Ljava/lang/String;)V

    .line 33
    return-void

    .line 29
    .end local v0    # "js":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "javascript:window.HavanaBridge.onSuccess(%s,\'%s\');"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/jjb;->this$0:Lc8/ljb;

    iget v3, v3, Lc8/ljb;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lc8/jjb;->val$retString:Ljava/lang/String;

    .line 30
    invoke-static {v3}, Lc8/ljb;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 29
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "js":Ljava/lang/String;
    goto :goto_0
.end method
