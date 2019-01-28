.class Lcom/ali/mobisecenhance/ld/tools/StatusUpload$1;
.super Ljava/lang/Object;
.source "StatusUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->uploadInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

.method constructor <init>(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->access$000(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V

    .line 132
    return-void
.end method
