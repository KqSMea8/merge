.class public final Lcom/taobao/accs/election/ElectionServiceUtil$2;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/election/ElectionServiceUtil;->saveBlackList(Landroid/content/Context;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:[B

.field final synthetic val$filepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$data:[B

    iput-object p3, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$filepath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/election/ElectionServiceUtil;->initPath(Landroid/content/Context;)V

    .line 238
    :cond_0
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 239
    iget-object v1, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$data:[B

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/taobao/accs/election/ElectionServiceUtil$2;->val$filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/taobao/accs/utl/FileUtils;->byteToFile([BLjava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
