.class public Lc8/UNp;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YNp;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YNp;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/YNp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lc8/UNp;->this$0:Lc8/YNp;

    iput-object p2, p0, Lc8/UNp;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/UNp;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lc8/UNp;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v2, p0, Lc8/UNp;->this$0:Lc8/YNp;

    iget-object v3, p0, Lc8/UNp;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lc8/UNp;->val$appKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/YNp;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "mDeviceId":Ljava/lang/String;
    iget-object v2, p0, Lc8/UNp;->this$0:Lc8/YNp;

    iget-object v3, p0, Lc8/UNp;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/YNp;->getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "mUtdid":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    iget-object v2, p0, Lc8/UNp;->this$0:Lc8/YNp;

    iget-object v3, p0, Lc8/UNp;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lc8/UNp;->val$appKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/YNp;->access$200(Lc8/YNp;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string/jumbo v2, "INNER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/AOp;->registerDeviceId(Ljava/lang/String;)Lc8/AOp;

    .line 91
    :cond_2
    return-object v0
.end method
