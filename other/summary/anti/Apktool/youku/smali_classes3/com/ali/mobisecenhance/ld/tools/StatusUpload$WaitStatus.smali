.class public Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;
.super Ljava/lang/Object;
.source "StatusUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/tools/StatusUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitStatus"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private log:Lcom/ali/mobisecenhance/ld/RecordLog;

.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V
    .locals 2
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFirstStartUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->access$100(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->access$100(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->access$200(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->access$300(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V

    goto :goto_0
.end method
