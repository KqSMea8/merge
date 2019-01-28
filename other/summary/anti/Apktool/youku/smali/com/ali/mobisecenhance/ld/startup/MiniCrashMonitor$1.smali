.class Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;
.super Ljava/lang/Object;
.source "MiniCrashMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;


# direct methods
.method constructor <init>(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$000(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "builder":Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$100(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-static {v2}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$200(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$300(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-static {v4}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$400(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->reportStartUpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;)Z

    .line 56
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->access$502(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;Z)Z

    .line 57
    return-void
.end method
